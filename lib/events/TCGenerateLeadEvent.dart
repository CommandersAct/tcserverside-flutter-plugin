
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCGenerateLeadEvent extends TCEvent
{
  double? value;
  String? currency;
  String? ID;

  TCGenerateLeadEvent({this.value, this.currency})
  {
    super.name = "generate_lead";
  }

  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['value'] = value;
    data['currency'] = currency;
    data['ID'] = ID;
    return data;
  }
}