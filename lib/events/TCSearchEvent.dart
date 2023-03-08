
import 'package:tc_serverside_plugin/events/TCEvent.dart';

class TCSearchEvent extends TCEvent
{
  String? searchTerm;

  TCSearchEvent({this.searchTerm})
  {
    super.name = "search";
  }

  @override
  Map<String, dynamic> toMap()
  {
    final Map<String, dynamic> data = super.toMap();
    data['searchTerm'] = searchTerm;
    return data;
  }
}