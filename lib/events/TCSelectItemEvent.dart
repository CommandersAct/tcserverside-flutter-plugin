
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCSelectItemEvent extends TCEvent
{
  String? itemListName;
  List<TCItem> items = [];

  TCSelectItemEvent({List<TCItem>? items})
  {
    super.name = "select_item";
    if (items != null)
    {
      this.items.addAll(items);
    }
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['items'] = items.map((v) => v.toMap()).toList();
    data['itemListName'] = itemListName;
    return data;
  }
}