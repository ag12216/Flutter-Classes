import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society/navigation/providers_list.dart';
import 'package:society/navigation/routes.dart';
import 'package:society/pages/login/login_view.dart';

void main() {
  runApp(MultiProvider(
    providers: Providers.providers,
    child: const Splash(),
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: Routes.login,
      home: Scaffold(
        body: LoginView(),
      ),
    );
  }
}