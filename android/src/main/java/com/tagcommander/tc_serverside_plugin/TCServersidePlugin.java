package com.tagcommander.tc_serverside_plugin;

import android.content.Context;
import android.util.Log;

import androidx.annotation.NonNull;

import com.google.gson.Gson;
import com.tagcommander.lib.core.TCDebug;
import com.tagcommander.lib.serverside.ETCConsentBehaviour;
import com.tagcommander.lib.serverside.TCServerSide;
import com.tagcommander.lib.serverside.events.TCAddPaymentInfoEvent;
import com.tagcommander.lib.serverside.events.TCAddShippingInfoEvent;
import com.tagcommander.lib.serverside.events.TCAddToCartEvent;
import com.tagcommander.lib.serverside.events.TCAddToWishlistEvent;
import com.tagcommander.lib.serverside.events.TCBeginCheckoutEvent;
import com.tagcommander.lib.serverside.events.TCCustomEvent;
import com.tagcommander.lib.serverside.events.TCEvent;
import com.tagcommander.lib.serverside.events.TCGenerateLeadEvent;
import com.tagcommander.lib.serverside.events.TCLoginEvent;
import com.tagcommander.lib.serverside.events.TCPageViewEvent;
import com.tagcommander.lib.serverside.events.TCPurchaseEvent;
import com.tagcommander.lib.serverside.events.TCRefundEvent;
import com.tagcommander.lib.serverside.events.TCRemoveFromCartEvent;
import com.tagcommander.lib.serverside.events.TCSearchEvent;
import com.tagcommander.lib.serverside.events.TCSelectContentEvent;
import com.tagcommander.lib.serverside.events.TCSelectItemEvent;
import com.tagcommander.lib.serverside.events.TCSignUpEvent;
import com.tagcommander.lib.serverside.events.TCViewCartEvent;
import com.tagcommander.lib.serverside.events.TCViewItem;
import com.tagcommander.lib.serverside.events.TCViewItemListEvent;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** TcServersidePlugin */
public class TCServersidePlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that wiRandom().nextDouble() * 150;ll the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  private TCServerSide tcServerSide;
  private Context appContext;
  Gson gson = new Gson();

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding)
  {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "tc_serverside_flutter_plugin");
    channel.setMethodCallHandler(this);
    appContext = flutterPluginBinding.getApplicationContext();
    TCDebug.setDebugLevel(Log.VERBOSE);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method)
    {
      case "initServerSide":
        ETCConsentBehaviour state = evaluateBehaviour(call.argument("defaultBehavior"));
        tcServerSide = new TCServerSide(call.argument("site_id"), call.argument("source_key"), appContext, state);
        result.success(null);
        break;
      case "execute":
        tcServerSide.execute(parseTCEvent(call.argument("name"), call.argument("event")));
        result.success(null);
        break;
      case "enableRunningInBackground":
        tcServerSide.enableRunningInBackground();
        result.success(null);
        break;
      case "addPermanentData":
        tcServerSide.addPermanentData(call.argument("key"), call.argument("value"));
        result.success(null);
        break;
      case "getPermanentData":
        result.success(tcServerSide.getPermanentData(call.argument("key")));
        break;
      case "removePermanentData":
        result.success(tcServerSide.removePermanentData(call.argument("key")));
        break;
      case "addAdvertisingID":
        tcServerSide.addAdvertisingID();
        result.success(null);
        break;
        default:
        result.notImplemented();
        break;
    }
  }

  private ETCConsentBehaviour evaluateBehaviour(String defaultBehavior) {
    if (defaultBehavior != null)
    {
      if (defaultBehavior.equals("ETCConsentBehaviour.PB_ALWAYS_ENABLED"))
      {
        return ETCConsentBehaviour.PB_ALWAYS_ENABLED;
      }
      if (defaultBehavior.equals("ETCConsentBehaviour.PB_DISABLED_BY_DEFAULT"))
      {
        return ETCConsentBehaviour.PB_DISABLED_BY_DEFAULT;
      }
    }
    return ETCConsentBehaviour.PB_DEFAULT_BEHAVIOUR;
  }

  public TCEvent parseTCEvent(String eventName, String eventString)
  {
    TCEvent event;

    switch(eventName)
    {
      case "add_shipping_info":
        event = gson.fromJson(eventString, TCAddShippingInfoEvent.class);
        break;
      case "purchase":
        event = gson.fromJson(eventString, TCPurchaseEvent.class);
        break;
      case "add_payement_info":
        event = gson.fromJson(eventString, TCAddPaymentInfoEvent.class);
        break;
      case "add_to_cart":
        event = gson.fromJson(eventString, TCAddToCartEvent.class);
        break;
      case "add_to_wishlist":
        event = gson.fromJson(eventString, TCAddToWishlistEvent.class);
        break;
      case "refund":
        event = gson.fromJson(eventString, TCRefundEvent.class);
        break;
      case "remove_from_cart":
        event = gson.fromJson(eventString, TCRemoveFromCartEvent.class);
        break;
      case "begin_checkout":
        event = gson.fromJson(eventString, TCBeginCheckoutEvent.class);
        break;
      case "view_cart":
        event = gson.fromJson(eventString, TCViewCartEvent.class);
        break;
      case "view_item":
        event = gson.fromJson(eventString, TCViewItem.class);
        break;
      case "view_item_list":
        event = gson.fromJson(eventString, TCViewItemListEvent.class);
        break;
      case "select_item":
        event = gson.fromJson(eventString, TCSelectItemEvent.class);
        break;
      case "generate_lead":
        event = gson.fromJson(eventString, TCGenerateLeadEvent.class);
        break;
      case "login":
        event = gson.fromJson(eventString, TCLoginEvent.class);
        break;
      case "page_view":
        event = gson.fromJson(eventString, TCPageViewEvent.class);
        break;
      case "search":
        event = gson.fromJson(eventString, TCSearchEvent.class);
        break;
      case "sign_up":
        event = gson.fromJson(eventString, TCSignUpEvent.class);
        break;
      case "select_content":
        event = gson.fromJson(eventString, TCSelectContentEvent.class);
        break;
      default:
        event = gson.fromJson(eventString, TCCustomEvent.class);
        break;
    }

    return event;
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
