
import 'dart:collection';

abstract class TCAdditionalProperties
{
  final Map<String, Object> _additionalProperties = HashMap();

  addAdditionalProperty(String key, String value)
  {
    _additionalProperties[key] = value;
  }

  addAdditionalPropertyWithMapValue(String key, Map value)
  {
    _additionalProperties[key] = value;
  }

  addAdditionalPropertyWithBooleanValue(String key, bool value)
  {
    _additionalProperties[key] = value;
  }

  addAdditionalPropertyWithDoubleValue(String key, double value)
  {
    _additionalProperties[key] = value;
  }

  addAdditionalPropertyWithIntValue(String key, int value)
  {
    _additionalProperties[key] = value;
  }

  addAdditionalPropertyWithListValue(String key, List value)
  {
    _additionalProperties[key] = value;
  }

  Map getAdditionalProperties()
  {
    return _additionalProperties;
  }

  removeAdditionalProperty(String key)
  {
    _additionalProperties.remove(key);
  }

  clearAdditionalProperties()
  {
    _additionalProperties.clear();
  }
}