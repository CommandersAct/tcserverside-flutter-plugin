
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCAddToCartEvent extends TCECommerceEvent
{
  double? value;

  TCAddToCartEvent({List<TCItem>? items, this.value, String? currency})
  {
    super.name = "add_to_cart";
    super.currency = currency;
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