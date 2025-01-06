import 'package:flutter/material.dart';
import 'package:society_hub/navigation/routes.dart';
import 'package:society_hub/resources/constant.dart';
import 'package:society_hub/pages/services/urls.dart';
import 'package:society_hub/resources/validators.dart';
import 'package:society_hub/pages/services/api_client.dart';
import 'package:society_hub/pages/services/models/login_response.dart';



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

  void onButtonClicked(BuildContext context) async{
    Navigator.of(context).pushNamed(Routes.dashboard, arguments: {'context': context});
    return;
    var email = emailController.text.trim();
    var password = passwordController.text.trim();

    if(!emailValid(email)){
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


    // ApiClient apiClient = ApiClient();
    // apiClient.post(controller, params)
    Map<String, dynamic> params = {
      "email": email,
      "password": password
    };
    var response = await ApiClient().post(Urls.login, params);
    LoginResponse.fromJson(response);
    
    // print(LoginResponse.shared.id);
  
    // Navigator.of(context).pushNamed(Routes.register);

    // if(email.isEmpty){
      
    // }
    // notifyListeners();
    
    // api
  }

  void navigateToForgotPassword(BuildContext context){
    Navigator.of(context).pushNamed(Routes.forgotPassword);
  }

}