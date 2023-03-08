import 'package:tc_serverside_plugin/events/TCAddPaymentInfoEvent.dart';
import 'package:tc_serverside_plugin/events/TCAddShippingInfoEvent.dart';
import 'package:tc_serverside_plugin/events/TCAddToCartEvent.dart';
import 'package:tc_serverside_plugin/events/TCAddToWishlistEvent.dart';
import 'package:tc_serverside_plugin/events/TCBeginCheckoutEvent.dart';
import 'package:tc_serverside_plugin/events/TCCustomEvent.dart';
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'package:tc_serverside_plugin/events/TCGenerateLeadEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';
import 'package:tc_serverside_plugin/events/TCLoginEvent.dart';
import 'package:tc_serverside_plugin/events/TCPageViewEvent.dart';
import 'package:tc_serverside_plugin/events/TCProduct.dart';
import 'package:tc_serverside_plugin/events/TCPurchaseEvent.dart';
import 'package:tc_serverside_plugin/events/TCRefundEvent.dart';
import 'package:tc_serverside_plugin/events/TCRemoveFromCartEvent.dart';
import 'package:tc_serverside_plugin/events/TCSearchEvent.dart';
import 'package:tc_serverside_plugin/events/TCSelectContentEvent.dart';
import 'package:tc_serverside_plugin/events/TCSelectItemEvent.dart';
import 'package:tc_serverside_plugin/events/TCSignUpEvent.dart';
import 'dart:math';

import 'package:tc_serverside_plugin/events/TCViewCartEvent.dart';
import 'package:tc_serverside_plugin/events/TCViewItem.dart';
import 'package:tc_serverside_plugin/events/TCViewItemListEvent.dart';

class MockEvents
{
  static TCPurchaseEvent makeMockTCPurchaseEvent()
  {
    var event = TCPurchaseEvent();

    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.ID = "event_custom_id";
    event.revenue = 13.13;
    event.value = 31.31;
    event.shippingAmount = 3;
    event.taxAmount = 3.5;
    event.coupon = "purchase_coupon";
    event.type = "purchase_type";
    event.paymentMethod = "IBAN";
    event.status = "valid";
    event.url = "boutique.fr";

    return event;
  }

  static TCAddShippingInfoEvent makeTCAddShippingInfoEvent()
  {
    var event = TCAddShippingInfoEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.value = 15.5;
    event.coupon = "coupon";
    event.shippingTier = "FedEx";

    return event;
  }

  static TCAddPaymentInfoEvent makeMockTCAddPaymentInfoEvent()
  {
    var event = TCAddPaymentInfoEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.paymentMethod = "Credit-Card";
    event.coupon = "discounted20";
    event.revenue = 1200;
    return event;
  }

  static TCAddToCartEvent makeMockTCAddToCartEvent()
  {
    var event = TCAddToCartEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.value = 12.5;
    return event;
  }

  static TCAddToWishlistEvent makeMockTCAddToWishlistEvent()
  {
    var event = TCAddToWishlistEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.value = 12.5;
    return event;
  }

  static TCRefundEvent makeMockTCRefundEvent()
  {
    var event = TCRefundEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.ID = "rf_322283829";
    event.revenue = Random().nextDouble() * 8000;
    event.value = Random().nextDouble() * 150;
    event.shippingAmount = Random().nextDouble() * 50;
    event.taxAmount = Random().nextDouble() * 0.5;
    event.coupon = "NOEL";
    event.type = "refund";
    event.url = "www.refund-my-purchases.com";

    return event;
  }

  static TCRemoveFromCartEvent makeMockTCRemoveFromCartEvent()
  {
    var event = TCRemoveFromCartEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.value = Random().nextDouble() * 150;
    return event;
  }

  static TCBeginCheckoutEvent makeMockTCBeginCheckoutEvent()
  {
    var event = TCBeginCheckoutEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.revenue = Random().nextDouble() * 8000;
    event.value = Random().nextDouble() * 150;
    event.coupon = "CAX-COUPON";

    return event;
  }

  static TCViewCartEvent makeMockTCViewCartEvent()
  {
    var event = TCViewCartEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.value = Random().nextDouble() * 120;
    return event;
  }

  static TCViewItem makeMockTCViewItem()
  {
    var event = TCViewItem();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.currency = "EUR";
    event.items = [makeItem(1), makeItem(2)];
    event.revenue = Random().nextDouble() * 120;
    return event;
  }

  static TCCustomEvent makeMockTCCustomEvent()
  {
    var event = TCCustomEvent("custom_event");
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    return event;
  }

  static TCSelectContentEvent makeMockTCSelectContentEvent()
  {
    var event = TCSelectContentEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.contentType = "content_type_value";
    event.itemID = "an_item_id";
    event.contentType = "text/json";
    event.itemID = "item_T";
    return event;
  }

  static TCSignUpEvent makeMockTCSignUpEvent()
  {
    var event = TCSignUpEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.method = "Oauth";
    return event;
  }

  static TCSearchEvent makeMockTCSearchEvent()
  {
    var event = TCSearchEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.searchTerm = "I'm feeling lucky";
    return event;
  }

  static TCPageViewEvent makeMockTCPageViewEvent()
  {
    var event = TCPageViewEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithBooleanValue("key_additional_1", true);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    return event;
  }

  static TCLoginEvent makeMockTCLoginEvent()
  {
    var event = TCLoginEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.method = "legacy";
    return event;
  }

  static TCGenerateLeadEvent makeMockTCGenerateLeadEvent()
  {
    var event = TCGenerateLeadEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.value = Random().nextDouble() * 150;
    event.currency = "EUR";
    event.ID = "event_id";

    return event;
  }

  static TCSelectItemEvent makeMockTCSelectItemEvent()
  {
    var event = TCSelectItemEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.itemListName = "item_list_name";
    event.items = [makeItem(1), makeItem(2)];
    return event;
  }

  static TCViewItemListEvent makeMockTCViewItemListEvent()
  {
    var event = TCViewItemListEvent();
    event.pageName = "event_page_name";
    event.pageType = "event_page_type";
    event.addAdditionalPropertyWithIntValue("key_additional_1", 12);
    event.addAdditionalPropertyWithListValue("key_additional_2", [12,12,12]);
    event.addAdditionalPropertyWithMapValue("key_map", {'test': 12, "test2": "value"});
    event.itemListName = "itemListName";
    event.items = [makeItem(1), makeItem(2)];

    return event;
  }

  static TCItem makeItem(int itemId)
  {
    TCItem item = TCItem();
    item.ID = "item_${itemId}_id";
    item.product = makeProduct(itemId);
    item.variant = "item_${itemId}_variant";
    item.list_position = itemId;
    item.discount = (Random().nextInt(5))/10;
    item.quantity = 1 + Random().nextInt(5);
    item.affiliation = "item_${itemId}_affiliation";
    item.coupon = "item_${itemId}_coupon";
    item.addAdditionalProperty("key_additional_item", "val_additional_product");
    return item;
  }

  static TCProduct makeProduct(int productId)
  {
    TCProduct product = TCProduct();
    product.ID = "product_${productId}_ID";
    product.name = "product_${productId}_name";
    product.price = Random().nextDouble() * 150;
    product.currency = "product_${productId}_currency";
    product.categories = ["product_${productId}_cat_1", "product_${productId}_cat_2"];
    product.brand = "product_${productId}_brand";
    product.colors = ["product_${productId}_col_1", "product_${productId}_col_2"];
    product.size = "product_${productId}_size";
    product.addAdditionalProperty("key_additional_product", "val_additional_product");
    return product;
  }
}