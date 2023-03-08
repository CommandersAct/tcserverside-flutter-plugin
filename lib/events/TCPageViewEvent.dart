
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCPageViewEvent extends TCEvent
{
  TCPageViewEvent({String? type})
  {
    super.name = "page_view";
    super.pageType = type;
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    return data;
  }
}