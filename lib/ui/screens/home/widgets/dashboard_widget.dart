import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:weather/data/storage/sunny_hive_storage.dart';
import 'package:weather/domain/entities/current_weather.dart';
import 'package:weather/ui/screens/home/cubit/home_cubit.dart';
import 'package:weather/ui/screens/home/cubit/home_state.dart';
import 'package:weather/ui/screens/home/widgets/data_unavailable_widget.dart';

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

  const DashBoardWidget({
    Key? key,
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
              onTabCallback: () => widget.zoomDrawerController.toggle?.call(),
              assetLocation: 'assets/icons/menu.svg',
              title: 'Sunny',
            ),
            BlocProvider.value(
              value: _homeCubit,
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.when(
                    homeInitialState: () => Container(),
                    dataAvailableState: (CurrentWeather currentWeather) => _getWeatherView(currentWeather),
                    dataUnavailableState: (DataUnavailableReason dataUnavailableReason) =>
                            DataUnavailableWidget(dataUnavailableReason: dataUnavailableReason,),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getWeatherView(CurrentWeather currentWeather) {
    return Column(
      children: [
        CityInfoWidget(date: currentWeather.dt, city: '${currentWeather.name} ${currentWeather.sys.country}',),
        WeatherInfoWidget(temp: currentWeather.main.temp.toString(), weatherDes: currentWeather.weather[0].description,),
        WeatherElementWidget([
          WeatherElementDto('assets/icons/ventos.svg', '${currentWeather.wind.speed} m/s'),
          WeatherElementDto('assets/icons/nuvem.svg', '${currentWeather.clouds.all} %'),
          WeatherElementDto('assets/icons/umidade.svg', '${currentWeather.rain.onehr} mm/hr' )
        ]),
        SunriseAndSunsetWidget(sunRise: currentWeather.sys.sunrise, sunSet: currentWeather.sys.sunset,),
        ComfortLevelWidget(humidity: currentWeather.main.humidity, feelsLike: currentWeather.main.feelsLike, pressure: currentWeather.main.pressure,),
        WindWidget(visibility: currentWeather.visibility, windDir: currentWeather.wind.deg,)
      ],
    );
  }
}
