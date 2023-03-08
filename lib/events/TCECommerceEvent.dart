
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCECommerceEvent extends TCEvent
{
  String? currency;
  List<TCItem> items = [];

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['currency'] = currency;
    data['items'] = items.map((v) => v.toMap()).toList();
    return data;
  }
}