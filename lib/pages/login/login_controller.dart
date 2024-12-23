
import 'package:flutter/material.dart';
import 'package:society/navigation/routes.dart';

class LoginController with ChangeNotifier{

  String? title = "Login";

  bool isPasswordVisible = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  void makePasswordVisible(){
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void navigateToRegister(BuildContext context){
    Navigator.of(context).pushNamed(Routes.register);
  }

}