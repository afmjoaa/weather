import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@Freezed(
    copyWith: false,
    equal: false,
    map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
    when: FreezedWhenOptions(when: true, whenOrNull: false, maybeWhen: true)
)
class HomeState with _$HomeState{
  const factory HomeState.homeInitialState() = HomeInitialState;
  const factory HomeState.fetchDataState() = FetchDataState;

}
