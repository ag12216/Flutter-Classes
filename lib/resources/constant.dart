
import 'dart:convert';

import 'package:flutter/services.dart';

const poppins = 'Poppins';


Future<Map<String, dynamic>> loadJsonFromAssets(String pathWithFileName) async {
  var response = await rootBundle.loadString("assets/json/$pathWithFileName.json");
  var result = jsonDecode(response) as Map<String, dynamic>;
  return result;
}