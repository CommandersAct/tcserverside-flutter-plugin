
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'dart:convert';

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
    await tcChannel.invokeMethod('initServerSide', {'site_id': siteId, 'source_key': sourceKey, 'defaultBehavior' : defaultBehavior.toString()});
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
    return tcChannel.invokeMethod('enableRunningInBackground');
  }

  Future<void> addPermanentData(String key, String value) async
  {
    return tcChannel.invokeMethod('addPermanentData', {'key': key, 'value' : value});
  }

  Future<String?> getPermanentData(String key) async
  {
    return tcChannel.invokeMethod('getPermanentData', {'key': key});
  }

  Future<String?> removePermanentData(String key) async
  {
    return tcChannel.invokeMethod('removePermanentData', {'key': key});
  }

  Future<void> addAdvertisingID() async
  {
    return tcChannel.invokeMethod('addAdvertisingID');
  }
}