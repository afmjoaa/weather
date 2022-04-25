import 'package:dartz/dartz.dart';
import 'package:weather/core/service_locator.dart';
import 'package:weather/data/models/current_weather_response.dart';
import 'package:weather/data/models/error_response.dart';
import 'package:weather/data/repositories/data_sources/current_weather_local_data_source.dart';
import 'package:weather/domain/entities/current_weather.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';

import 'data_sources/current_weather_remote_data_source.dart';

class CurrentWeatherRepositoryImpl implements CurrentWeatherRepository {
  late CurrentWeatherRemoteDataSource _currentWeatherRemoteDataSource;
  late CurrentWeatherLocalDataSource _currentWeatherLocalDataSource;

  CurrentWeatherRepositoryImpl() {
    _currentWeatherRemoteDataSource = sl.get<CurrentWeatherRemoteDataSource>();
    _currentWeatherLocalDataSource = sl.get<CurrentWeatherLocalDataSource>();
  }

  @override
  Future<CurrentWeather?> getCurrentWeather(double lat, double lon) async {
    Either<CurrentWeatherResponse, ErrorResponse> _response =
    await _currentWeatherRemoteDataSource.getCurrentWeather(lat, lon);

    var result = _response.fold((apiResponse) async {
      _currentWeatherLocalDataSource.putCurrentWeatherResponse(apiResponse);
      return apiResponse.toEntity();
    }, (error) async {
      var localResponse = await _currentWeatherLocalDataSource
          .getCurrentWeatherResponse();
      if (localResponse != null) {
        return localResponse.toEntity();
      } else {
        return null;
      }
    });

    return result;
  }

}