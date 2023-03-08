
import 'package:tc_serverside_plugin/events/TCAdditionalProperties.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

abstract class TCEvent extends TCAdditionalProperties
{
  late String name;
  String? pageType;
  String? pageName;

  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['additionalProperties'] = super.getAdditionalProperties();
    data['pageType'] = pageType;
    data['pageName'] = pageName;
    return data;
  }
}
