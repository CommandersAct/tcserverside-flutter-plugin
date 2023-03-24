
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCRemoveFromCartEvent extends TCECommerceEvent
{

  double? value;

  TCRemoveFromCartEvent({List<TCItem>? items})
  {
    super.name = "remove_from_cart";
    if (items != null)
    {
      super.items.addAll(items);
    }
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['value'] = value;
    return data;
  }
}