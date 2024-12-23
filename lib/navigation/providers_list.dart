
import 'package:provider/provider.dart';
import 'package:society/pages/login/login_controller.dart';
import 'package:society/pages/login/register_controller.dart';

class Providers {
  static var providers = [
    ChangeNotifierProvider(create: (_) => LoginController()),
    ChangeNotifierProvider(create: (_) => RegisterController()),
  ];
  
}