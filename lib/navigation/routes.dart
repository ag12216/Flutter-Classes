import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/pages/dashboard/dashboard_view.dart';
import 'package:society_hub/pages/login/login_view.dart';
import 'package:society_hub/pages/login/otp_verification.dart';
import 'package:society_hub/pages/login/register_view.dart';
import 'package:society_hub/pages/page_not_found/page_not_found.dart';



class Routes {
    static const login = '/login';
    static const register = '/register';
    static const forgotPassword = '/forgotPassword';
    static const dashboard = '/dashboard';

    static Route<dynamic> onGenerateRoute(RouteSettings settings){
        switch(settings.name){
          case login:
            return MaterialPageRoute(builder: (_) => const LoginView());
          
          case register:
            return MaterialPageRoute(builder: (_) => const RegisterView());
          
          case forgotPassword:
            return MaterialPageRoute(builder: (_) => const OtpVerification());
          
          case dashboard:
            DashboardController ctrl = Provider.of<DashboardController>((settings.arguments as Map)['context'], listen: false);
            ctrl.init(dashboard);
            return MaterialPageRoute(builder: (_) => const DashboardView());

          default:
            return MaterialPageRoute(builder: (_) => const PageNotFound());
        }
    }
}