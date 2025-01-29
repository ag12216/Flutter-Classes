import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:society_hub/common_widgets/nav_controller.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/pages/login/forgot_password_controller.dart';
import 'package:society_hub/pages/login/login_controller.dart';
import 'package:society_hub/pages/login/register_controller.dart';
import 'package:society_hub/pages/others/fields_controller.dart';
import 'package:society_hub/pages/others/learn_controller.dart';
import 'package:society_hub/pages/others/other_controller.dart';
import 'package:society_hub/pages/splash/splash_controller.dart';
import 'package:society_hub/pages/tabbar/tabbar_controller.dart';
import 'package:society_hub/pages/tabbars/tababrs_controller.dart';
import 'package:society_hub/pages/visitors/visitor_controller.dart';
import 'package:society_hub/pages/walkthrough/walkthrough_controller.dart';
import 'package:society_hub/resources/protocols.dart';


class Providers {

  static List<SingleChildWidget> providerList = [
    ChangeNotifierProvider(create: (_) => NavController()),
    ChangeNotifierProvider(create: (_) => BaseModel()),
    ChangeNotifierProvider(create: (_) => LoginController()..init()),
    ChangeNotifierProvider(create: (_) => RegisterController()..init()),
    ChangeNotifierProvider(create: (_) => DashboardController()),
    ChangeNotifierProvider(create: (_) => ForgotPasswordController()),
    ChangeNotifierProvider(create: (_) => OtherController()),
    ChangeNotifierProvider(create: (_) => LearnController()),
    ChangeNotifierProvider(create: (_) => FieldsController()),
    ChangeNotifierProvider(create: (_) => TabbarController()),
    ChangeNotifierProvider(create: (_) => VisitorController()),
    ChangeNotifierProvider(create: (_) => TababrsController()),
    ChangeNotifierProvider(create: (_) => WalkthroughController()),
    ChangeNotifierProvider(create: (_) => SplashController()),
    
    
    
    
  ];

}