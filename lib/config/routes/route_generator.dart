import 'package:flutter/material.dart';
import '../../main.dart';
import '../../modules/screens/main_screen.dart';
import '../../modules/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/main_screen':
        return MaterialPageRoute(builder: (context) => MainScreen(args));

      default:
        return MaterialPageRoute(builder: (context) => MainPage());
    }
  }
}
