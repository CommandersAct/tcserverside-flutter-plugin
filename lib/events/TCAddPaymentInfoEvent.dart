
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';

class TCAddPaymentInfoEvent extends TCECommerceEvent
{
  String? paymentMethod;
  String? coupon;
  double? revenue;

  TCAddPaymentInfoEvent({this.paymentMethod})
  {
    super.name = "add_payement_info";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['paymentMethod'] = paymentMethod;
    data['coupon'] = coupon;
    data['revenue'] = revenue;
    return data;
  }
}