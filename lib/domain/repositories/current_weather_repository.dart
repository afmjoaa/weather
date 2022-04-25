import 'package:weather/domain/entities/current_weather.dart';

abstract class CurrentWeatherRepository {
  Future<CurrentWeather?> getCurrentWeather(
      double lat,
      double lon);
}