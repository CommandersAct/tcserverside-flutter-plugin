
import 'package:tc_serverside_plugin/events/TCAdditionalProperties.dart';

class TCProduct extends TCAdditionalProperties
{
  TCProduct({this.ID, this.name, this.price});

  String? ID;
  String? name;
  double? price;
  String? currency;
  List<String> categories = [];
  String? brand;
  List<String> colors = [];
  String? size;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = ID;
    data['name'] = name;
    data['price'] = price;
    data['currency'] = currency;
    data['categories'] = categories;
    data['brand'] = brand;
    data['colors'] = colors;
    data['size'] = size;
    return data;
  }
}