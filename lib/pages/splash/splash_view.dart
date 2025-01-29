
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/splash/splash_controller.dart';
import 'package:society_hub/resources/assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController ctrl = Provider.of<SplashController>(context,listen: false);
    ctrl.navigateToScreen(context);
    return Consumer<SplashController>(builder: (_, viewModel, child) => Scaffold(
      body: Image.asset(Assets.splash),
    ));
  }
}