
import 'package:tc_serverside_plugin/events/TCEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCViewItemListEvent extends TCEvent
{
  String? itemListName;
  List<TCItem> items = [];

  TCViewItemListEvent({List<TCItem>? items})
  {
    super.name = "view_item_list";
    if (items != null)
    {
      this.items.addAll(items);
    }
  }

  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['items'] = items.map((v) => v.toMap()).toList();
    data['itemListName'] = itemListName;
    return data;
  }
}