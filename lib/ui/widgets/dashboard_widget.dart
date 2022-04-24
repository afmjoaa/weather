import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

import '../../entities/weather_element_entity.dart';
import 'sunny_appbar.dart';
import 'comfort_level_widget.dart';
import 'city_info_widget.dart';
import 'sunrise_and_sunset_widget.dart';
import 'weather_element_widget.dart';
import 'weather_info_widget.dart';
import 'wind_widget.dart';

class DashBoardWidget extends StatefulWidget {

  final ZoomDrawerController zoomDrawerController;

  const DashBoardWidget({Key? key,
    required this.zoomDrawerController,
  }) : super(key: key);

  @override
  _DashBoardWidgetState createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {

  Future<void> _pullRefresh() async {

  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 64,
      color: const Color(0xff836eff),
      onRefresh: _pullRefresh,
      child: Scaffold(
        body: ListView(
          children: [
            SunnyAppBar(
              onTabCallback: ()=>
                widget.zoomDrawerController.toggle?.call(),
              assetLocation: 'assets/icons/menu.svg',
              title: 'Sunny',
            ),
            const CityInfoWidget(),
            const WeatherInfoWidget(),
            WeatherElementWidget(
                [
                  WeatherElementEntity('assets/icons/ventos.svg', '100'),
                  WeatherElementEntity('assets/icons/nuvem.svg', '100'),
                  WeatherElementEntity('assets/icons/umidade.svg', '100')
                ]
            ),
            const SunriseAndSunsetWidget(),
            const ComfortLevelWidget(),
            const WindWidget()
          ],
        ),
      ),
    );
  }
}