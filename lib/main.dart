import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:society/navigation/providers_list.dart';
import 'package:society/navigation/routes.dart';
import 'package:society/pages/login/login_controller.dart';
import 'package:society/pages/login/login_view.dart';
import 'package:society/pages/login/register_controller.dart';

void main() {
  runApp(MultiProvider(
    providers: [
    ChangeNotifierProvider(create: (_) => LoginController()..init()),
    ChangeNotifierProvider(create: (_) => RegisterController()),
  ],
    child: const Splash(),
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
            onGenerateRoute: Routes.onGenerateRoute,
            initialRoute: Routes.login,
            home: Scaffold(
              body: LoginView(),
            ),
          );
      },
    );
  }
}