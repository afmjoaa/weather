import 'package:flutter/material.dart';
import '../widgets/sunny_appbar.dart';

class AboutScreen extends StatelessWidget {
  static const String path = '/about_screen';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
         SunnyAppBar(
          onTabCallback: ()=> Navigator.of(context).pop(),
          assetLocation: 'assets/icons/arrow.svg',
          title: 'About',
          tooltip: 'Back to dashboard',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Creator: A.F.M. Mohimenul Joaa',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Text('Demonstrating:\n1. Clean Architecture,\n2. ...',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
