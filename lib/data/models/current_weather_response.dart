import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:weather/domain/entities/current_weather.dart';

import 'base_model/base_model.dart';

part 'current_weather_response.freezed.dart';
part 'current_weather_response.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class CurrentWeatherResponse extends BaseModel<CurrentWeatherResponse> with _$CurrentWeatherResponse {
  const CurrentWeatherResponse._();
  const factory CurrentWeatherResponse(
      CoordResponseModel coord,
      List<WeatherResponseModel> weather,
      String base,
      MainResponseModel main,
      int visibility,
      WindResponseModel wind,
      CloudsResponseModel clouds,
      int dt,
      SysResponseModel sys,
      int timezone,
      int id,
      String name,
      int cod,
      ) = _CurrentWeatherResponse;

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);

  CurrentWeather toEntity() => CurrentWeather (
    coord: coord.toEntity(),
    weather: weather.map((e) => e.toEntity()).toList(),
    base: base,
    main: main.toEntity(),
    visibility: visibility,
    wind: wind.toEntity(),
    clouds: clouds.toEntity(),
    dt: dt,
    sys: sys.toEntity(),
    timezone: timezone,
    id: id,
    name: name,
    cod: cod
  );

}

@Freezed(
  copyWith: false,
  equal: false,
)
class CoordResponseModel with _$CoordResponseModel {
  const CoordResponseModel._();
  const factory CoordResponseModel(
      double lon,
      double lat,
      ) = _CoordResponseModel;

  factory CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoordResponseModelFromJson(json);

  Coord toEntity() => Coord (
    lat: lat,
    lon: lon
  );
}

@Freezed(
  copyWith: false,
  equal: false,
)
class WeatherResponseModel with _$WeatherResponseModel {
  const WeatherResponseModel._();
  const factory WeatherResponseModel(
      int id,
      String main,
      String description,
      String icon,
      ) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);

  Weather toEntity() => Weather (
    id:id,
    main: main,
    description: description,
    icon: icon
  );
}


@Freezed(
  copyWith: false,
  equal: false,
)
class MainResponseModel with _$MainResponseModel {
  const MainResponseModel._();
  const factory MainResponseModel(
      double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      double pressure,
      double humidity,
      ) = _MainResponseModel;

  factory MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainResponseModelFromJson(json);

  Main toEntity() => Main (
    temp: temp,
    feelsLike: feels_like,
    tempMin: temp_min,
    tempMax:  temp_max,
    pressure: pressure,
    humidity: humidity,
  );
}

@Freezed(
  copyWith: false,
  equal: false,
)
class WindResponseModel with _$WindResponseModel {
  const WindResponseModel._();
  const factory WindResponseModel(
      double speed,
      double deg,
      double gust,
      ) = _WindResponseModel;

  factory WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WindResponseModelFromJson(json);

  Wind toEntity() => Wind (
      speed: speed,
      deg: deg,
      gust: gust
  );
}

@Freezed(
  copyWith: false,
  equal: false,
)
class CloudsResponseModel with _$CloudsResponseModel {
  const CloudsResponseModel._();
  const factory CloudsResponseModel(
      int all,
      ) = _CloudsResponseModel;

  factory CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsResponseModelFromJson(json);

  Clouds toEntity() => Clouds (
    all: all
  );
}

@Freezed(
  copyWith: false,
  equal: false,
)
class SysResponseModel with _$SysResponseModel {
  const SysResponseModel._();
  const factory SysResponseModel(
      String country,
      int sunrise,
      int sunset,
      ) = _SysResponseModel;

  factory SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SysResponseModelFromJson(json);

  Sys toEntity() => Sys (
    country: country,
    sunrise: sunrise,
    sunset: sunset
  );
}
