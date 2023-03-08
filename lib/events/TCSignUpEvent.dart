
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCSignUpEvent extends TCEvent
{
  String? method;

  TCSignUpEvent()
  {
    super.name = "sign_up";
  }

  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['method'] = method;
    return data;
  }
}