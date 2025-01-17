
import 'package:flutter/material.dart';

class LearnController with ChangeNotifier {
  bool isVisibleText = true;

  void onChangeText(){
    isVisibleText = !isVisibleText;
    notifyListeners();
  }
}