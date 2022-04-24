import 'package:flutter/material.dart';

import 'sunny_application.dart';
import '../ui/shared/loading/loading_cubit.dart';

class SunnyProvider extends InheritedWidget {

  static late SunnyApplication appInstance;
  static late LoadingCubit loadingCubit;

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