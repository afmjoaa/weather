import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const String path = '/about_screen';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('this is the about page')
    );
  }
}
