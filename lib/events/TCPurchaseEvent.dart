
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';
import 'package:tc_serverside_plugin/events/TCItem.dart';

class TCPurchaseEvent extends TCECommerceEvent
{
  String? ID;
  double? revenue;
  double? value;
  double? shippingAmount;
  double? taxAmount;
  String? coupon;
  String? type;
  String? paymentMethod;
  String? status;
  String? url;

  TCPurchaseEvent({this.ID, this.revenue, this.value, String? currency, this.type, this.paymentMethod, this.status, List<TCItem>? tc_items})
  {
    super.name = "purchase";
    super.currency = currency;
    super.items.addAll(items);
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
    data['paymentMethod'] = paymentMethod;
    data['status'] = status;
    data['url'] = url;
    return data;
  }
}