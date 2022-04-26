import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:weather/core/service_locator.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';
import 'package:weather/domain/use_cases/current_weather_use_case.dart';
import 'package:weather/dto/location_dto.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather/utility/log.dart';
import 'package:weather/utility/utility.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitialState());

  Future<void> getCurrentWeather() async {
    Utility.startLoadingAnimation();
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.unableToDetermine) {
      permission = await Geolocator.checkPermission();
    } else if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      if (Platform.isAndroid || Platform.isIOS) {
        emit(const DataUnavailableState(DataUnavailableReason.locationPermissionDenied));
        Utility.completeLoadingAnimation();
      }
    } else {
      bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isLocationServiceEnabled) {
        if (Platform.isAndroid || Platform.isIOS) {
          emit(const DataUnavailableState(DataUnavailableReason.locationDisabled));
          Utility.completeLoadingAnimation();
        }
      } else{
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        var currentWeather = await CurrentWeatherUseCase(sl.get<CurrentWeatherRepository>())
            .call(LocationDto(position.latitude, position.longitude));

        if (currentWeather == null) {
          emit(const DataUnavailableState(DataUnavailableReason.noInternetAndCache));
        } else {
          emit(DataAvailableState(currentWeather));
        }
        Log.severe('foofoo $currentWeather, ${position.latitude}, ${position.longitude}');
      }
    }
  }
}
