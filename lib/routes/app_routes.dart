import 'package:flutter/material.dart';
import 'package:fixapp/presentation/inicio_screen/inicio_screen.dart';
import 'package:fixapp/presentation/log_in_screen/log_in_screen.dart';
import 'package:fixapp/presentation/register_one_screen/register_one_screen.dart';
import 'package:fixapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String inicioScreen = '/inicio_screen';

  static const String logInScreen = '/log_in_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    inicioScreen: (context) => InicioScreen(),
    logInScreen: (context) => LogInScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
