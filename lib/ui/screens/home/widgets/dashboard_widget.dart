import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:weather/data/storage/sunny_hive_storage.dart';
import 'package:weather/ui/screens/home/cubit/home_cubit.dart';

import '../../../../dto/weather_element_dto.dart';
import '../../../shared/sunny_appbar.dart';
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
  late final HomeCubit _homeCubit;
  late Future<void> _hiveInit;

  @override
  void initState() {
    super.initState();
    _homeCubit = HomeCubit();
    _hiveInit = SunnyHiveStorage.init();
    _hiveInit.whenComplete(_homeCubit.getCurrentWeather);
  }

  Future<void> _pullRefresh() async {
    _homeCubit.getCurrentWeather();
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
                  WeatherElementDto('assets/icons/ventos.svg', '100'),
                  WeatherElementDto('assets/icons/nuvem.svg', '100'),
                  WeatherElementDto('assets/icons/umidade.svg', '100')
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