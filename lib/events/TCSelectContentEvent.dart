
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCSelectContentEvent extends TCEvent
{
  String? contentType;
  String? itemID;

  TCSelectContentEvent()
  {
    super.name = "select_content";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['contentType'] = contentType;
    data['itemID'] = itemID;
    return data;
  }
}