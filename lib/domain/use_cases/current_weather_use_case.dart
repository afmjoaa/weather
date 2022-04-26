import 'package:weather/domain/entities/current_weather.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';
import 'package:weather/dto/location_dto.dart';

import 'base_use_case/base_use_case.dart';

class CurrentWeatherUseCase extends BaseUseCase<CurrentWeather?,
    LocationDto> {
  final CurrentWeatherRepository _currentWeatherRepository;

  const CurrentWeatherUseCase(this._currentWeatherRepository);

  @override
  Future<CurrentWeather?> call(LocationDto input) async{
      return await _currentWeatherRepository.getCurrentWeather(input.lat, input.lon);
  }
}