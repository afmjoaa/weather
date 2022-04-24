import 'package:flutter/material.dart';

import '../ui/Screens/about/about_screen.dart';
import '../ui/Screens/home/home_screen.dart';

class SunnyRoutes {
  static Map<String, WidgetBuilder> configureRoutes() {
    return {
      HomeScreen.path: (context) => const HomeScreen(),
      AboutScreen.path: (context) => const AboutScreen()
    };
  }
}