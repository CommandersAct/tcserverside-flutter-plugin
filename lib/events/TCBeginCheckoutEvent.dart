
import 'package:tc_serverside_plugin/events/TCECommerceEvent.dart';

class TCBeginCheckoutEvent extends TCECommerceEvent
{
  double? revenue;
  double? value;
  String? coupon;

  TCBeginCheckoutEvent()
  {
    super.name = "begin_checkout";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['revenue'] = revenue;
    data['value'] = value;
    data['coupon'] = coupon;
    return data;
  }
}