import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/pages/dashboard/dashboard_view.dart';
import 'package:society_hub/pages/login/container_decoration.dart';
import 'package:society_hub/pages/login/login_view.dart';
import 'package:society_hub/pages/login/otp_verification.dart';
import 'package:society_hub/pages/others/fields.dart';
import 'package:society_hub/pages/others/learn_view.dart';
import 'package:society_hub/pages/others/others.dart';
import 'package:society_hub/pages/page_not_found/page_not_found.dart';
import 'package:society_hub/pages/tabbar/tabbar_view.dart';



class Routes {
    static const login = '/login';
    static const register = '/register';
    static const forgotPassword = '/forgotPassword';
    static const dashboard = '/dashboard';
    static const others = '/others';
    static const learn = '/learn';
    static const wing = '/wing';
    static const fields = '/fields';

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
          
          case wing:
            return MaterialPageRoute(builder: (_) => const WingPage());

          case others:
            return MaterialPageRoute(builder: (_) => const OthersPage());
          
          case fields:
            return MaterialPageRoute(builder: (_) => const FieldsView());

        case learn:
          return MaterialPageRoute(builder: (_) => const LearnView());

          default:
            return MaterialPageRoute(builder: (_) => const PageNotFound());
        }
    }
}