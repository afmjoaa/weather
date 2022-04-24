import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../../core/sunny_provider.dart';

import '../../shared/loading/loading_widget.dart';
import 'widgets/dashboard_widget.dart';
import 'widgets/menu_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String path = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final drawerController = ZoomDrawerController();

  @override
  void initState() {
    super.initState();
    SunnyProvider.loadingCubit.loadingFailed('some random error');
  }

  @override
  Widget build(BuildContext context) {
    return LoadingWidget(
      loadingCubit: SunnyProvider.loadingCubit,
      child: Scaffold(
        body: ZoomDrawer(
          controller: drawerController,
          style: DrawerStyle.Style1,
          menuScreen: const MenuWidget(),
          mainScreen: DashBoardWidget(
            zoomDrawerController: drawerController,
          ),
          borderRadius: 24.0,
          disableGesture: false,
          mainScreenTapClose: true,
          showShadow: true,
          angle: -10.0,
          backgroundColor: Colors.black12,
          slideWidth: MediaQuery.of(context).size.width * .50,
          openCurve: Curves.fastOutSlowIn,
          closeCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
