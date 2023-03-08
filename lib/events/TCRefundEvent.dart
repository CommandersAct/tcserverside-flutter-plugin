
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCRefundEvent extends TCECommerceEvent
{
  String? ID;
  double? revenue;
  double? value;
  double? shippingAmount;
  double? taxAmount;
  String? coupon;
  String? type;
  String? url;

  TCRefundEvent({this.ID, this.revenue, this.value, String? currency, this.type, List<TCItem>? items})
  {
    super.name = "refund";
    super.currency = currency;
    if (items != null)
    {
      super.items.addAll(items);
    }
  }

  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['ID'] = ID;
    data['revenue'] = revenue;
    data['value'] = value;
    data['shippingAmount'] = shippingAmount;
    data['taxAmount'] = taxAmount;
    data['coupon'] = coupon;
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}