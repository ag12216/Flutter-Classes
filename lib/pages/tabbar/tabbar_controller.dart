
import 'package:flutter/material.dart';

class TabbarController with ChangeNotifier {
  TabController? tabController;
  List<String> list = ['1st Floor','2nd Floor','3rd Floor','4th Floor'];

  void initializeTabController(TickerProvider reference){
    tabController = TabController(length: list.length, vsync: reference);
  // list.asMap().map((key, value) => MapEntry(key, "value")).values.toList();
    tabController?.addListener((){
      notifyListeners();
    });
  }

}