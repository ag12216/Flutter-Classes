
import 'package:flutter/material.dart';
import 'package:society_hub/navigation/routes.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/cache_data.dart';
import 'package:society_hub/resources/protocols.dart';

class WalkthroughController extends BaseModel {
    int selectedIndex = 0;

    Map<String, dynamic> assets = {
     '0' : Assets.screen1,
     '1' : Assets.screen2,
     '2' : Assets.screen3,
    };

    void onPageChange(BuildContext context,int index){
      if(index < 3){
        selectedIndex = index;
        notifyListeners();
      }else{
        CacheData.shared.saveWalkThrough();
        Navigator.of(context).pushReplacementNamed(Routes.login);
      }
    }

}