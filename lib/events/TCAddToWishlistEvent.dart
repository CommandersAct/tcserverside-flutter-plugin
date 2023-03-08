
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCAddToWishlistEvent extends TCECommerceEvent
{
  double? value;

  TCAddToWishlistEvent({List<TCItem>? items})
  {
    super.name = "add_to_wishlist";
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