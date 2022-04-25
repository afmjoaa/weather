import 'package:dartz/dartz.dart';
import 'package:weather/core/service_locator.dart';
import 'package:weather/data/models/current_weather_response.dart';
import 'package:weather/data/models/error_response.dart';
import 'package:weather/domain/entities/current_weather.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';

import 'data_sources/current_weather_remote_data_source.dart';

class CurrentWeatherRepositoryImpl implements CurrentWeatherRepository {
  late CurrentWeatherRemoteDataSource _currentWeatherRemoteDataSource;

  CurrentWeatherRepositoryImpl() {
    _currentWeatherRemoteDataSource = sl.get<CurrentWeatherRemoteDataSource>();
  }

  @override
  Future<CurrentWeather?> getCurrentWeather(double lat, double lon) async{
    Either<CurrentWeatherResponse, ErrorResponse> _response =
        await _currentWeatherRemoteDataSource.getCurrentWeather(lat, lon);

    // var result = _response.fold((apiResponse) async {
    //     return apiResponse.toEntity();
    //   }, (error) => null);

    return null;
  }

}