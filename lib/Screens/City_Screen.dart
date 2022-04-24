import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

import '../entities/weather_element_entity.dart';
import '../widgets/sunny_appbar.dart';
import '../widgets/comfort_level_widget.dart';
import '../widgets/city_info_widget.dart';
import '../widgets/sunrise_and_sunset_widget.dart';
import '../widgets/weather_element_widget.dart';
import '../widgets/weather_info_widget.dart';
import '../widgets/wind_widget.dart';

class CityScreen extends StatefulWidget {
  final ZoomDrawerController zoomDrawerController;

  const CityScreen({Key? key,
    required this.zoomDrawerController,
  }) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

  Future<void> _pullRefresh() async {

  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _pullRefresh,
      child: Scaffold(
        body: ListView(
          children: [
            SunnyAppBar(zoomDrawerController: widget.zoomDrawerController),
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