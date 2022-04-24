import 'package:flutter/material.dart';

import '../Screens/about_screen.dart';
import '../Screens/home_screen.dart';

class SunnyRoutes {
  static Map<String, WidgetBuilder> configureRoutes() {
    return {
      HomeScreen.path: (context) => const HomeScreen(),
      AboutScreen.path: (context) => const AboutScreen()
    };
  }
}