import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/navigation/providers_list.dart';
import 'package:society_hub/navigation/routes.dart';
import 'package:society_hub/pages/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: Providers.providerList,
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
            initialRoute: Routes.splash,
            home: Scaffold(
              body: LoginView(),
            ),
          );
      },
    );
  }
}