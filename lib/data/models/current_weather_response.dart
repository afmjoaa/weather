import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:weather/data/storage/hive_type_ids.dart';
import 'package:weather/domain/entities/current_weather.dart';
import 'package:weather/utility/utility.dart';

import 'base_model/base_model.dart';

part 'current_weather_response.freezed.dart';
part 'current_weather_response.g.dart';

@JsonSerializable(createToJson: false)
@HiveType(typeId: HiveTypeIds.currentWeatherResponse, adapterName: 'CurrentWeatherResponseAdapter')
class CurrentWeatherResponse extends BaseModel<CurrentWeatherResponse> {
  @HiveField(0)
  final CoordResponseModel coord;
  @HiveField(1)
  final List<WeatherResponseModel> weather;
  @HiveField(2)
  final String base;
  @HiveField(3)
  final MainResponseModel main;
  @HiveField(4)
  final int visibility;
  @HiveField(5)
  final WindResponseModel wind;
  @HiveField(6)
  final CloudsResponseModel clouds;
  @HiveField(7)
  final int dt;
  @HiveField(8)
  final SysResponseModel sys;
  @HiveField(9)
  final int timezone;
  @HiveField(10)
  final int id;
  @HiveField(11)
  final String name;
  @HiveField(12)
  final int cod;
  @HiveField(13)
  final RainResponseModel? rain;

  CurrentWeatherResponse(
      this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod,
      this.rain);

  factory CurrentWeatherResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => {};

  CurrentWeather toEntity() => CurrentWeather(
      coord: coord.toEntity(),
      weather: weather.map((e) => e.toEntity()).toList(),
      base: base,
      main: main.toEntity(),
      visibility: visibility,
      wind: wind.toEntity(),
      clouds: clouds.toEntity(),
      dt: Utility.timeStampToDate(dt),
      sys: sys.toEntity(),
      timezone: timezone,
      id: id,
      name: name,
      cod: cod,
      rain: rain?.toEntity() ?? Rain(onehr: 00)
  );
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class CoordResponseModel with _$CoordResponseModel {
  const CoordResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.coordResponseModel,
      adapterName: 'CoordResponseModelAdapter')
  const factory CoordResponseModel(
    @HiveField(0) double lon,
    @HiveField(1) double lat,
  ) = _CoordResponseModel;

  factory CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoordResponseModelFromJson(json);

  Coord toEntity() => Coord(lat: lat, lon: lon);
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class WeatherResponseModel with _$WeatherResponseModel {
  const WeatherResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.weatherResponseModel,
      adapterName: 'WeatherResponseModelAdapter')
  const factory WeatherResponseModel(
    @HiveField(0) int id,
    @HiveField(1) String main,
    @HiveField(2) String description,
    @HiveField(3) String icon,
  ) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);

  Weather toEntity() =>
      Weather(id: id, main: main, description: description, icon: icon);
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class MainResponseModel with _$MainResponseModel {
  const MainResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.mainResponseModel,
      adapterName: 'MainResponseModelAdapter')
  const factory MainResponseModel(
    @HiveField(0) double temp,
    @HiveField(1) double feels_like,
    @HiveField(2) double temp_min,
    @HiveField(3) double temp_max,
    @HiveField(4) double pressure,
    @HiveField(5) double humidity,
  ) = _MainResponseModel;

  factory MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainResponseModelFromJson(json);

  Main toEntity() => Main(
        temp: temp,
        feelsLike: feels_like,
        tempMin: temp_min,
        tempMax: temp_max,
        pressure: pressure,
        humidity: humidity,
      );
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class WindResponseModel with _$WindResponseModel {
  const WindResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.windResponseModel,
      adapterName: 'WindResponseModelAdapter')
  const factory WindResponseModel(
    @HiveField(0) double speed,
    @HiveField(1) double? deg,
  ) = _WindResponseModel;

  factory WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WindResponseModelFromJson(json);

  Wind toEntity() => Wind(speed: speed, deg: deg ?? 00);
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class CloudsResponseModel with _$CloudsResponseModel {
  const CloudsResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.cloudsResponseModel,
      adapterName: 'CloudsResponseModelAdapter')
  const factory CloudsResponseModel(
    @HiveField(0) int all,
  ) = _CloudsResponseModel;

  factory CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsResponseModelFromJson(json);

  Clouds toEntity() => Clouds(all: all);
}

@Freezed(
  copyWith: false,
  equal: false,
  toJson: false
)
class SysResponseModel with _$SysResponseModel {
  const SysResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.sysResponseModel,
      adapterName: 'SysResponseModelAdapter')
  const factory SysResponseModel(
    @HiveField(0) String? country,
    @HiveField(1) int sunrise,
    @HiveField(2) int sunset,
  ) = _SysResponseModel;

  factory SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SysResponseModelFromJson(json);

  Sys toEntity() => Sys(country: country ?? "Your Location", sunrise: Utility.timeStampToTime(sunrise), sunset: Utility.timeStampToTime(sunset));
}

@Freezed(
    copyWith: false,
    equal: false,
    toJson: false
)
class RainResponseModel with _$RainResponseModel {
  const RainResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.rainResponseModel,
      adapterName: 'RainResponseModelAdapter')
  const factory RainResponseModel(
      @JsonKey(name: '1h') @HiveField(0) double onehr,
      ) = _RainResponseModel;

  factory RainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RainResponseModelFromJson(json);

  Rain toEntity() => Rain(onehr: onehr);
}
