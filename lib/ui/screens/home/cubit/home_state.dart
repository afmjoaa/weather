import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/domain/entities/current_weather.dart';

part 'home_state.freezed.dart';

@Freezed(
    copyWith: false,
    equal: false,
    map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
    when: FreezedWhenOptions(when: true, whenOrNull: false, maybeWhen: true)
)
class HomeState with _$HomeState{
  const factory HomeState.homeInitialState() = HomeInitialState;
  const factory HomeState.dataAvailableState(CurrentWeather currentWeather) = DataAvailableState;
  const factory HomeState.dataUnavailableState() = dataUnavailableState;
}
