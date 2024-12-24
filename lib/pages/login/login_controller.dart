
import 'package:flutter/material.dart';
import 'package:society/navigation/routes.dart';
import 'package:society/resources/constant.dart';

class LoginController with ChangeNotifier{

  Map<String, dynamic> loginJson = {};

  String? title = "Login";
  bool isPasswordVisible = false;
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void init() async{
    loginJson = await loadJsonFromAssets("login/en/login");
    notifyListeners();
  }

  String getValue(String key){
    return loginJson[key];
  }

  String getMapValue(String key,String secondKey){
    return loginJson['fields']?[key]?[secondKey];
  }

  void makePasswordVisible(){
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void navigateToRegister(BuildContext context){
    Navigator.of(context).pushNamed(Routes.register);
  }

  void onButtonClicked(BuildContext context){
    var email = emailController.text.trim();
    var password = passwordController.text.trim();
    print('Email: $email, Password: $password'); 
    if(email.isEmpty || password.isEmpty){
      // error
    }
    // api
  }

}