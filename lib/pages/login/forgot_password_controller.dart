
import 'package:flutter/material.dart';


class ForgotPasswordController with ChangeNotifier{
  String? otp;
  bool enabled = true;
  bool? clearText = false;

  void setOtp(String pin){
    if(otp == null){
      otp = pin;
    }else{
      otp = '$otp$pin';
    }

    if((otp?.length ?? 0) >= 4){
      enabled = false;
    }else{
      enabled = true;
    }
    notifyListeners();
    print(otp);
  }

  void resetOtpField(){
    enabled = true;
    otp = null;
    clearText = true;
    notifyListeners();
    Future.delayed((Duration(seconds: 2))).then((onValue) {
      clearText = false;
      notifyListeners();
    });
  }
}