
import 'package:flutter/material.dart';

class NavController with ChangeNotifier {

  bool hidePrefixIcon = false;
  final TextEditingController searchController = TextEditingController();

  void didTapPrefixIcon(){
    hidePrefixIcon = !hidePrefixIcon;
    notifyListeners();
  }

  void displayPrefixIcon(){
    hidePrefixIcon = false;
    notifyListeners();
  }
}