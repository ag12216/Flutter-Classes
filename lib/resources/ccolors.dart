import 'dart:ui';

import 'package:flutter/material.dart';


class CColors {

  static Color hexToRGB(String hex){
    String hexColor = "0xff$hex";
    int intColor = int.parse(hexColor); 
    int red = (intColor >> 16) & 0xff; 
    int green = (intColor >> 8) & 0xff; 
    int blue = (intColor >> 0) & 0xff;
    return Color.fromRGBO(red, green, blue, 1);
  }

  static const primary = Color.fromRGBO(255, 168, 0, 1);
  static const black = Color.fromRGBO(0, 0, 0, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const textGrey = Color.fromRGBO(135, 135, 135, 1);
  static const red = Color.fromRGBO(208, 0, 0, 1);
  static const mySociety = Color.fromRGBO(255, 245, 239, 1);
  static const commitee = Color.fromRGBO(228, 243, 231, 1);
  static const myvisitors = Color.fromRGBO(240, 243, 255, 1);
  static const events = Color.fromRGBO(244, 235, 255, 1);
  static const complaints = Color.fromRGBO(255, 247, 232, 1);
  static const maintenance = Color.fromRGBO(255, 242, 242, 1);
  static Color lightGrey = hexToRGB('F1F6FC');
  static Color orange1 = hexToRGB('FFA800');
  static Color orange2 = hexToRGB('FF833D');


}

class BoxShadows {
  static BoxShadow get boxShadow => BoxShadow(
          color: CColors.textGrey.withValues(alpha: 0.3),
          spreadRadius: 2,
          blurRadius: 4,
          offset: const Offset(0.5, 1.0)
      );
}