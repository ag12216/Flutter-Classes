
import 'package:flutter/material.dart';
import 'package:society_hub/resources/constant.dart';

class BaseModel with ChangeNotifier {
  Map<String, dynamic> jsonData = {};
  
  void init(String? path) async{
    jsonData = await loadJsonFromAssets('$path/$path');
    print(jsonData);
    notifyListeners();
  }

  String getValue(String key){
    return jsonData[key] ?? '';
  }
}