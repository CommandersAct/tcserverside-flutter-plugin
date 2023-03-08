
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCCustomEvent extends TCEvent
{
  TCCustomEvent(String eventName)
  {
    super.name = eventName;
  }
}