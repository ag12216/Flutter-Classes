
import 'package:society_hub/resources/protocols.dart';

class VisitorController extends BaseModel {
  List<String> requests = ['Upcoming','Past','Declined'];
  String? selectedRequest = 'Upcoming';
  
  void didTapRequestButton(String? value){
    selectedRequest = value;
    notifyListeners();
  }

}