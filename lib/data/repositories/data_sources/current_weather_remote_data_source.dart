import 'package:dartz/dartz.dart';
import 'package:weather/core/service_locator.dart';
import 'package:weather/data/models/current_weather_query_params.dart';
import 'package:weather/data/models/current_weather_response.dart';
import 'package:weather/data/models/error_response.dart';
import 'package:weather/data/network/current_weather_api.dart';


abstract class CurrentWeatherRemoteDataSource {
  Future<Either<CurrentWeatherResponse, ErrorResponse>> getCurrentWeather(
     double lat, double lon);
}

class CurrentWeatherRemoteDataSourceImpl implements CurrentWeatherRemoteDataSource {
  late CurrentWeatherApi _currentWeatherApi;

  CurrentWeatherRemoteDataSourceImpl() {
    _currentWeatherApi = sl<CurrentWeatherApi>();
  }

  @override
  Future<Either<CurrentWeatherResponse, ErrorResponse>> getCurrentWeather(double lat, double lon) async {
      Either<CurrentWeatherResponse, ErrorResponse> response =
      await _currentWeatherApi.get(queryParameters: CurrentWeatherQueryParams(lat, lon, "0a1ce7426b8c585644f5e8265187d455", "metric").toJson());
      return response;
  }
}
