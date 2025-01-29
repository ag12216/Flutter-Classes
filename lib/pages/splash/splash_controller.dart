
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:society_hub/navigation/routes.dart';
import 'package:society_hub/resources/cache_data.dart';
import 'package:society_hub/resources/protocols.dart';

class SplashController extends BaseModel {

  void navigateToScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((e) async {
      bool isWalkThroughCompleted = await CacheData.shared.getWalkThrough();
      Navigator.of(context).pushReplacementNamed(isWalkThroughCompleted ? Routes.login: Routes.walkThrough);
    });    
    
  }

}