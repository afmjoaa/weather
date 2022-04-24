import '../screens/home_screen.dart';
import 'package:Weather/core/sunny_application.dart';
import 'package:flutter/material.dart';

import 'sunny_provider.dart';

class SunnyApp extends StatelessWidget {
  final SunnyApplication _application;

  const SunnyApp(this._application, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Sunny',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'MohrRounded',
      ),
      home: const HomeScreen(),
      routes: _application.routes,
      debugShowCheckedModeBanner: false,
    );

    final appProvider = SunnyProvider(_application, app);
    return appProvider;
  }
}