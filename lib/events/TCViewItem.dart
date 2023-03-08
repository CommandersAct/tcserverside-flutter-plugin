
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';

class TCViewItem extends TCECommerceEvent
{
  double? revenue;

  TCViewItem()
  {
    super.name = "view_item";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['revenue'] = revenue;
    return data;
  }
}