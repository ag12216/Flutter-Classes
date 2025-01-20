import 'package:flutter/material.dart';
import 'package:society_hub/navigation/routes.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/constant.dart';
import 'package:society_hub/resources/validators.dart';
import 'package:society_hub/pages/services/models/login_response.dart';
import 'package:society_hub/services/api_client.dart';
import 'package:society_hub/services/urls.dart';
import 'package:society_hub/widgets/text_view.dart';



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
    Navigator.of(context).pushNamed(Routes.learn, arguments: {'context': context});
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

    Map<String, dynamic> params = {
      'email': emailController.text.trim(),
      'password': passwordController.text.trim()
    };

    ApiClient apiClient = ApiClient();
    Map<String, dynamic>? response =  await apiClient.post(Urls.login, params);
    if(response != null){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.green,content: TextView(title: "Login Success",textAlign: TextAlign.center,color: Colors.white)));
      Navigator.of(context).pushReplacementNamed(Routes.dashboard, arguments: {'context': context});
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.red,content: TextView(title: "Login Failed",textAlign: TextAlign.center,color: Colors.white)));
    }

    
    // api
  }

  void navigateToForgotPassword(BuildContext context){
    Navigator.of(context).pushNamed(Routes.forgotPassword);
  }

}