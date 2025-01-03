import 'dart:convert';
import 'package:flutter/services.dart';



const poppins = 'Poppins';

const en = 'en';
const mr = 'mr';
const hi = 'hi';

const dashboard = 'dashboard';

String getLanguage(){
  String selectedLanguage = en;
  switch(selectedLanguage){
    case en:
      return en;
    case hi:
      return hi;
    case mr:
      return mr;
    default:
      return en;
  }
}

Future<Map<String, dynamic>> loadJsonFromAssets(String pathWithFileName) async {
  var response = await rootBundle.loadString("assets/json/$pathWithFileName.json");
  var result = jsonDecode(response) as Map<String, dynamic>;
  return result;
}