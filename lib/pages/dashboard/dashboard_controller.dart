import 'package:society_hub/resources/protocols.dart';

class DashboardController extends BaseModel {

  void onButtonClicked(){
    print(super.jsonData);
    //setState
    notifyListeners();
  }


}