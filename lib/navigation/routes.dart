import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/pages/dashboard/dashboard_view.dart';
import 'package:society_hub/pages/login/container_decoration.dart';
import 'package:society_hub/pages/login/login_view.dart';
import 'package:society_hub/pages/login/otp_verification.dart';
import 'package:society_hub/pages/others/others.dart';
import 'package:society_hub/pages/page_not_found/page_not_found.dart';



class Routes {
    static const login = '/login';
    static const register = '/register';
    static const forgotPassword = '/forgotPassword';
    static const dashboard = '/dashboard';
    static const others = '/others';

    static Route<dynamic> onGenerateRoute(RouteSettings settings){
        switch(settings.name){
          case login:
            return MaterialPageRoute(builder: (_) => const LoginView());
          
          case register:
            return MaterialPageRoute(builder: (_) => const ConainerDecoration());
          
          case forgotPassword:
            return MaterialPageRoute(builder: (_) => const OtpVerification());
          
          case dashboard:
            DashboardController ctrl = Provider.of<DashboardController>((settings.arguments as Map)['context'], listen: false);
            ctrl.init(dashboard);
            return MaterialPageRoute(builder: (_) => const DashboardView());
          
          case others:
            return MaterialPageRoute(builder: (_) => const OthersPage());

          default:
            return MaterialPageRoute(builder: (_) => const PageNotFound());
        }
    }
}