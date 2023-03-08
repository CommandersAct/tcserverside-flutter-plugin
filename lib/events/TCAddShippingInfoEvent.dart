import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCAddShippingInfoEvent extends TCECommerceEvent
{
  double? value;
  String? coupon;
  String? shippingTier;

  TCAddShippingInfoEvent({this.value, String? currency, List<TCItem>? items})
  {
    super.name = "add_shipping_info";
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
    data['coupon'] = coupon;
    data['shippingTier'] = shippingTier;
    data['items'] = items.map((v) => v.toMap()).toList();
    return data;
  }
}