import 'package:flutter/material.dart';
import 'package:society/resources/constant.dart';


class RegisterController with ChangeNotifier{
  
  Map<String, dynamic> registerJson = {};

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  void init() async{
    registerJson = await loadJsonFromAssets("login/${getLanguage()}/register");
    notifyListeners();
  }

    String getValue(String key){
      return registerJson[key];
    }
}