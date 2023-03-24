
import 'package:tc_serverside_plugin/events/TCAdditionalProperties.dart';
import 'package:tc_serverside_plugin/tc_serverside.dart';

class TCSchemesAdditionalProperties extends TCAdditionalProperties
{
  @override
  addAdditionalProperty(String key, String value)
  {
    super.addAdditionalProperty(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "string"});
  }

  @override
  addAdditionalPropertyWithMapValue(String key, Map value)
  {
    super.addAdditionalPropertyWithMapValue(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "map"});
  }

  @override
  addAdditionalPropertyWithBooleanValue(String key, bool value)
  {
    super.addAdditionalPropertyWithBooleanValue(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "bool"});
  }

  @override
  addAdditionalPropertyWithDoubleValue(String key, double value)
  {
    super.addAdditionalPropertyWithDoubleValue(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "double"});
  }

  @override
  addAdditionalPropertyWithIntValue(String key, int value)
  {
    super.addAdditionalPropertyWithIntValue(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "int"});
  }

  @override
  addAdditionalPropertyWithListValue(String key, List value)
  {
    super.addAdditionalPropertyWithListValue(key, value);
    TCServerside.tcChannel.invokeMethod('addAdditionalProperty', {"key" : key, "value" : value, "class" : runtimeType.toString(), "type" : "list"});
  }

  @override
  removeAdditionalProperty(String key)
  {
    super.removeAdditionalProperty(key);
    TCServerside.tcChannel.invokeMethod('removeAdditionalProperty', {"key" : key, "class" : runtimeType.toString()});
  }

  @override
  clearAdditionalProperties()
  {
    super.clearAdditionalProperties();
    TCServerside.tcChannel.invokeMethod('clearAdditionalProperties');
  }
}