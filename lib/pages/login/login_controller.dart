import 'package:flutter/material.dart';
import 'package:society/navigation/routes.dart';
import 'package:society/resources/constant.dart';


class LoginController with ChangeNotifier{

  Map<String, dynamic> loginJson = {};
  String? emailError;
  String? passwordError;

  String? title = "Login";
  bool isPasswordVisible = false;
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void init() async{
    loginJson = await loadJsonFromAssets("login/${getLanguage()}/login");
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
    if(email.isEmpty){
      emailError = loginJson['emailError'];
    }else{
      emailError = null;
    }

    if(password.isEmpty){
      passwordError = loginJson['passwordError'];
    }else{
      passwordError = null;
    }

    if(email.isEmpty || password.isEmpty){
      notifyListeners();
      return;
    }

    emailError = null;
    passwordError = null;
    notifyListeners();


    Navigator.of(context).pushNamed(Routes.register);

    // if(email.isEmpty){
      
    // }
    // notifyListeners();
    
    // api
  }

}