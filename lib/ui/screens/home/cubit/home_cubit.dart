import 'package:bloc/bloc.dart';
import 'package:weather/core/service_locator.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';
import 'package:weather/domain/use_cases/current_weather_use_case.dart';
import 'package:weather/dto/location_dto.dart';
import 'package:weather/utility/log.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitialState());

  Future<void> getCurrentWeather() async{
    var currentWeather =
        await CurrentWeatherUseCase(sl.get<CurrentWeatherRepository>())
        .call(LocationDto(23,134));

    // print('foofoo');
    // Log.severe('foofoo $currentWeather');
  }
}
