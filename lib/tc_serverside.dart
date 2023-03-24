
import 'dart:core';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tc_serverside_plugin/TCApp.dart';
import 'package:tc_serverside_plugin/TCDevice.dart';
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'package:tccore_plugin/TCUser.dart';

enum ETCConsentBehaviour {
  PB_DEFAULT_BEHAVIOUR,
  PB_ALWAYS_ENABLED,
  PB_DISABLED_BY_DEFAULT;
}

class TCServerside
{
  static const MethodChannel tcChannel = MethodChannel('tc_serverside_flutter_plugin');

  Future<void> initServerSide(int siteId, String sourceKey, {ETCConsentBehaviour defaultBehavior = ETCConsentBehaviour.PB_DEFAULT_BEHAVIOUR}) async
  {
    Map schemes = await tcChannel.invokeMethod('initServerSide', {'site_id': siteId, 'source_key': sourceKey, 'defaultBehavior' : defaultBehavior.toString()});

    if (defaultTargetPlatform  == TargetPlatform.android)
    {
      TCDevice.fromJson(jsonDecode(schemes["device"]));
      TCApp.fromJson(jsonDecode(schemes["app"]));
      TCUser.fromJson(jsonDecode(schemes["user"]));
    }
    else if (defaultTargetPlatform  == TargetPlatform.iOS)
    {
      TCDevice.fromJson(schemes["device"]);
      TCApp.fromJson(schemes["app"]);
      TCUser.fromJson(schemes["user"]);
    }
  }

  Future<void> disableServerSide() async
  {
    await tcChannel.invokeMethod('disableServerSide');
  }

  Future<void> enableServerSide() async
  {
    await tcChannel.invokeMethod('enableServerSide');
  }

  Future<void> execute(TCEvent event) async
  {
    if (defaultTargetPlatform  == TargetPlatform.android)
    {
      return tcChannel.invokeMethod('execute', {'event': json.encode(event.toMap()), 'name': event.name});
    }
    else if (defaultTargetPlatform  == TargetPlatform.iOS)
    {
      return tcChannel.invokeMethod('execute', {'event': event.toMap(), 'name': event.name});
    }
  }

  Future<void> enableRunningInBackground() async
  {
    await tcChannel.invokeMethod('enableRunningInBackground');
  }

  Future<void> addPermanentData(String key, String value) async
  {
    await tcChannel.invokeMethod('addPermanentData', {'key': key, 'value' : value});
  }

  Future<String?> getPermanentData(String key) async
  {
    return await tcChannel.invokeMethod('getPermanentData', {'key': key});
  }

  Future<String?> removePermanentData(String key) async
  {
    return await tcChannel.invokeMethod('removePermanentData', {'key': key});
  }

  Future<void> addAdvertisingID() async
  {
    Map map = await tcChannel.invokeMethod('addAdvertisingID');
    if (defaultTargetPlatform  == TargetPlatform.android)
    {
      TCDevice.setAdvertisingIds(jsonDecode(map["device"]));
    }
    else if (defaultTargetPlatform  == TargetPlatform.iOS)
    {
      TCDevice.setAdvertisingIds(map["device"]);
    }
  }
}