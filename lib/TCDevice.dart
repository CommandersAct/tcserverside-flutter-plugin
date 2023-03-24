
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tc_serverside_plugin/events/TCSchemesAdditionalProperties.dart';
import 'package:tc_serverside_plugin/tc_serverside.dart';

class TCDevice extends TCSchemesAdditionalProperties
{
  static final TCDevice _sharedInstance = TCDevice._internal();

  MethodChannel? tcChannel;
  late String? _ID;
  late String? _manufacturer;
  late String? _model;
  late String? _name;
  late String? _type;
  late String? _timezone;
  late String? _IDFA;
  late String? _IDFV;
  late String? _osName;
  late String? _osVersion;
  late double? _screenWidth;
  late double? _screenHeight;

  factory TCDevice()
  {
    return _sharedInstance;
  }

  TCDevice._internal();

  factory TCDevice.fromJson(Map map)
  {
    _sharedInstance.ID = map["sdk_id"];
    _sharedInstance.manufacturer = map["manufacturer"];
    _sharedInstance.model = map["model"];
    _sharedInstance.name = map["name"];
    _sharedInstance.type = map["type"];
    _sharedInstance.timezone = map["timezone"];
    _sharedInstance.IDFA = map["advertising_id"];
    _sharedInstance.IDFV = map["idfv"];
    _sharedInstance.osName = (map["os"] ?? const {})["name"];
    _sharedInstance.osVersion = (map["os"] ?? const {})["version"];
    _sharedInstance.screenWidth = (map["screen"] ?? const {})["width"].toDouble();
    _sharedInstance.screenHeight = (map["screen"] ?? const {})["height"].toDouble();
    _sharedInstance.tcChannel = TCServerside.tcChannel;

    return _sharedInstance;
  }

  static setAdvertisingIds(Map tcDevice)
  {
    _sharedInstance.IDFA = tcDevice["advertising_id"];
    _sharedInstance.IDFV = tcDevice["idfv"];
    return _sharedInstance;
  }

  set ID(String? value) {
    _ID = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "sdkID", "value" : _ID, "class" : runtimeType.toString()});
  }

  set manufacturer(String? value) {
    _manufacturer = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "manufacturer", "value" : _manufacturer, "class" : runtimeType.toString()});
  }

  set model(String? value) {
    _model = value;
      TCServerside.tcChannel.invokeMethod("setValue", {"key" : "model", "value" : _model, "class" : runtimeType.toString()});
  }

  set name(String? value) {
    _name = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "name", "value" : _name, "class" : runtimeType.toString()});
  }

  set type(String? value) {
    _type = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "type", "value" : _type, "class" : runtimeType.toString()});
  }

  set timezone(String? value) {
    _timezone = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "timezone", "value" : _timezone, "class" : runtimeType.toString()});
  }

  set IDFA(String? value) {
    _IDFA = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "IDFA", "value" : _IDFA, "class" : runtimeType.toString()});
  }

  set IDFV(String? value) {
    _IDFV = value;
      TCServerside.tcChannel.invokeMethod("setValue", {"key" : "IDFV", "value" : _IDFV, "class" : runtimeType.toString()});
  }

  set osName(String? value) {
    _osName = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "osName", "value" : _osName, "class" : runtimeType.toString()});
    }

  set osVersion(String? value) {
    _osVersion = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "osVersion", "value" : _osVersion, "class" : runtimeType.toString()});
  }

  set screenWidth(double? value) {
    _screenWidth = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "screenWidth", "value" : _screenWidth, "class" : runtimeType.toString()});
  }

  set screenHeight(double? value) {
    _screenHeight = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "screenHeight", "value" : _screenHeight, "class" : runtimeType.toString()});
  }

  String? get ID => _ID;

  String? get manufacturer => _manufacturer;

  String? get model => _model;

  String? get name => _name;

  String? get type => _type;

  String? get timezone => _timezone;

  String? get IDFA => _IDFA;

  String? get IDFV => _IDFV;

  String? get osVersion => _osVersion;

  String? get osName => _osName;

  double? get screenWidth => _screenWidth;

  double? get screenHeight => _screenHeight;
}

