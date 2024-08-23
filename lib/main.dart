import 'package:flutter/material.dart';
import 'package:todo_app_c11_friday/core/routes_manager/app_routes.dart';
import 'package:todo_app_c11_friday/core/styles/app_theme.dart';
import 'package:todo_app_c11_friday/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRoutes.onGenerateRoute,

    );
  }
}

