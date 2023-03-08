
import 'package:tc_serverside_plugin/events/TCAdditionalProperties.dart';
import 'package:tc_serverside_plugin/events/TCProduct.dart';

class TCItem extends TCAdditionalProperties
{
  TCItem({this.ID, this.product, this.quantity});

  String? ID;
  TCProduct? product;
  String? variant;
  int? list_position;
  double? discount;
  int? quantity;
  String? affiliation;
  String? coupon;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = ID;
    data['variant'] = variant;
    data['list_position'] = list_position;
    data['discount'] = discount;
    data['quantity'] = quantity;
    data['affiliation'] = affiliation;
    data['coupon'] = coupon;
    if (product != null)
    {
      data['product'] = product!.toMap();
    }
    return data;
  }
}