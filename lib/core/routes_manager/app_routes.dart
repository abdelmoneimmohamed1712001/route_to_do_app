import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_c11_friday/ui/auth/register/register_screen.dart';
import 'package:todo_app_c11_friday/ui/home/home_screen.dart';

class AppRoutes{
  static const String homeRoute = '/home';
  static const String registerRoute = '/';
  static   Route<dynamic>?  onGenerateRoute (RouteSettings settings){
    switch(settings.name){
      case registerRoute:{
        return MaterialPageRoute(builder: (context) => RegisterScreen(),);
      }
      case homeRoute:{
        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      }





    }
  }
}

// enum Routes{
//   homeRoute,
//   settingRoute,
//
// }