import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/protocols.dart';

class DashboardController extends BaseModel {

  Map<String, dynamic> dashboardTiles = {};

    @override
  Future<void> init(String? path) async{
    await super.init(path);
    dashboardTiles = {
        getValue('my_society')  : {'image': Assets.mysociety, 'color': CColors.mySociety},
        getValue('committee') : {'image': Assets.committee, 'color': CColors.commitee},
        getValue('myVisitor') : {'image': Assets.visitors, 'color': CColors.myvisitors},
        getValue('events') :  {'image': Assets.events, 'color': CColors.events},
        getValue('complaints') : {'image': Assets.complaints, 'color': CColors.complaints},
        getValue('maintenance') : {'image': Assets.maintenance, 'color': CColors.maintenance},
    };
  }

  void onButtonClicked(){
    print(super.jsonData);
    //setState
    notifyListeners();
  }


}