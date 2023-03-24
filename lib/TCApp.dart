
import 'package:tc_serverside_plugin/events/TCSchemesAdditionalProperties.dart';
import 'package:tc_serverside_plugin/tc_serverside.dart';

class TCApp extends TCSchemesAdditionalProperties
{
  static final TCApp _sharedInstance = TCApp._internal();

  late String? _name;
  late String? _version;
  late String? _build;
  late String? _nameSpace;
  late String? _coreVersion;
  late String? _serverSideVersion;

  factory TCApp()
  {
    return _sharedInstance;
  }

  TCApp._internal();

  factory TCApp.fromJson(Map map)
  {
    _sharedInstance.name = map["name"];
    _sharedInstance.version = map["version"];
    _sharedInstance.build = map["build"];
    _sharedInstance.nameSpace = map["nameSpace"];
    _sharedInstance.coreVersion = map["coreVersion"];
    _sharedInstance.serverSideVersion = map["serverSideVersion"];
    return _sharedInstance;
  }

  String? get serverSideVersion => _serverSideVersion;

  String? get coreVersion => _coreVersion;

  String? get nameSpace => _nameSpace;

  String? get build => _build;

  String? get version => _version;

  String? get name => _name;

  set serverSideVersion(String? value) {
    _serverSideVersion = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "serverSideVersion", "value" : _serverSideVersion, "class" : runtimeType.toString()});
  }

  set coreVersion(String? value) {
    _coreVersion = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "coreVersion", "value" : _coreVersion, "class" : runtimeType.toString()});
  }

  set nameSpace(String? value) {
    _nameSpace = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "nameSpace", "value" : _nameSpace, "class" : runtimeType.toString()});
  }

  set build(String? value) {
    _build = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "build", "value" : _build, "class" : runtimeType.toString()});
  }

  set version(String? value) {
    _version = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "version", "value" : _version, "class" : runtimeType.toString()});
  }

  set name(String? value) {
    _name = value;
    TCServerside.tcChannel.invokeMethod("setValue", {"key" : "name", "value" : _name, "class" : runtimeType.toString()});
  }
}
