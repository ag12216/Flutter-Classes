import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/pages/login/forgot_password_controller.dart';
import 'package:society_hub/pages/login/login_controller.dart';
import 'package:society_hub/pages/login/register_controller.dart';
import 'package:society_hub/pages/others/other_controller.dart';
import 'package:society_hub/resources/protocols.dart';


class Providers {

  static List<SingleChildWidget> providerList = [
    ChangeNotifierProvider(create: (_) => BaseModel()),
    ChangeNotifierProvider(create: (_) => LoginController()..init()),
    ChangeNotifierProvider(create: (_) => RegisterController()..init()),
    ChangeNotifierProvider(create: (_) => DashboardController()),
    ChangeNotifierProvider(create: (_) => ForgotPasswordController()),
    ChangeNotifierProvider(create: (_) => OtherController()),
    
    
  ];

}