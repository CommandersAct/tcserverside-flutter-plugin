
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCLoginEvent extends TCEvent
{
  String? method;

  TCLoginEvent()
  {
    super.name = "login";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['method'] = method;
    return data;
  }
}