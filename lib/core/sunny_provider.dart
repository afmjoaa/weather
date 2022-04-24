import 'package:Weather/core/sunny_application.dart';
import 'package:flutter/material.dart';

class SunnyProvider extends InheritedWidget {

  static late SunnyApplication appInstance;

  final SunnyApplication application;

  SunnyProvider(this.application, Widget child, {Key? key})
      : super(key: key, child: child) {
    appInstance = application;
  }

  @override
  bool updateShouldNotify(_) => true;

  static SunnyProvider of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(aspect: SunnyProvider) as SunnyProvider);
  }
}