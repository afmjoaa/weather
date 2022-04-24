import 'package:Weather/Screens/City_Screen.dart';
import 'package:Weather/Screens/Menu_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ControllScreen extends StatefulWidget {
  @override
  _ControllScreenState createState() => _ControllScreenState();
}

class _ControllScreenState extends State<ControllScreen> {
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        style: DrawerStyle.Style1,
        menuScreen: MenuScreen(),
        mainScreen: CityScreen(
          zoomDrawerController: drawerController,
        ),
        borderRadius: 24.0,
        disableGesture: false,
        showShadow: true,
        angle: -10.0,
        backgroundColor: Colors.black12,
        slideWidth: MediaQuery.of(context).size.width * .50,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
