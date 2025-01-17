
import 'package:flutter/material.dart';

class FieldsController with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  bool isButtonClicked = false;

  void onChange(){
    isButtonClicked = true;
    notifyListeners();
  }

  void didTapSubmitButton(){
    print("Clicked");
    isButtonClicked = true;
    notifyListeners();
    // print(formKey.currentState?.validate());
  }

}