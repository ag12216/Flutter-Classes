
import 'package:flutter/material.dart';
import 'package:society_hub/resources/protocols.dart';

class TababrsController extends BaseModel{
  TabController? tabController;

  String? selectedPaymentMethod;

  List<String> tabs = ["1st Floor","2nd Floor","3rd Floor","4th Floor"];


  void initalizetabBar(TickerProvider instance){
    tabController = TabController(length: tabs.length, vsync: instance);
    notifyListeners();
  }

  void onPaymentMethodSelected(String? value){
    selectedPaymentMethod = value;
    notifyListeners();
  }

}