import 'package:provider/provider.dart';
import 'package:society_hub/pages/login/login_controller.dart';
import 'package:society_hub/pages/login/register_controller.dart';


class Providers {

  static List<ChangeNotifierProvider> getProviders() {
    return [
    ChangeNotifierProvider(create: (_) => LoginController()),
    ChangeNotifierProvider(create: (_) => RegisterController()),
  ];
  }

}