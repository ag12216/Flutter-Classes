

import 'package:flutter/material.dart';
import 'package:society/pages/login/login_view.dart';
import 'package:society/pages/login/register.dart';
import 'package:society/pages/page_not_found/page_not_found.dart';

class Routes {
    static const login = '/login';
    static const register = '/register';

    static Route<dynamic> onGenerateRoute(RouteSettings settings){
        switch(settings.name){
          case login:
            return MaterialPageRoute(builder: (_) => const LoginView());
          
          case register:
            return MaterialPageRoute(builder: (_) => const RegisterView());

          default:
            return MaterialPageRoute(builder: (_) => const PageNotFound());
        }
    }
}