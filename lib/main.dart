import 'package:Weather/Screens/home_screen.dart';
import 'package:Weather/core/sunny_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/sunny_app.dart';
import 'core/sunny_provider.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SunnyApplication application = SunnyApplication();
  application.onCreate();
  startAppComponent(application);
}

void startAppComponent(var application) {
  runApp(SunnyApp(application));
}