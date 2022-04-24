import 'package:flutter/material.dart';

import 'sunny_routes.dart';
import 'application.dart';
import '../utility/log.dart';

class SunnyApplication implements Application {
  //Any storage that is needed through out the app
  late Map<String, WidgetBuilder> routes;

  @override
  void onCreate() {
    _initLog();
    _initRouter();
  }

  void _initLog() {
    Log.init();
  }

  void _initRouter() {
    routes = SunnyRoutes.configureRoutes();
  }

  @override
  void onTerminate() {

  }

}