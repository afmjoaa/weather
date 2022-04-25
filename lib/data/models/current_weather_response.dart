import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'base_model/base_model.dart';

part 'current_weather_response.freezed.dart';
part 'current_weather_response.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class CurrentWeatherResponse extends BaseModel<CurrentWeatherResponse> with _$CurrentWeatherResponse {

  const factory CurrentWeatherResponse(
      CoordResponseModel coord,
      List<WeatherResponseModel> weather,
      String base,
      MainResponseModel main,
      String visibility,
      WindResponseModel wind,
      CloudsResponseModel clouds,
      String dt,
      SysResponseModel sys,
      String timezone,
      String id,
      String name,
      String cod,
      ) = _CurrentWeatherResponse;

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);

}

@Freezed(
  copyWith: false,
  equal: false,
)
class CoordResponseModel with _$CoordResponseModel {
  const factory CoordResponseModel(
      String lon,
      String lat,
      ) = _CoordResponseModel;

  factory CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoordResponseModelFromJson(json);
}

@Freezed(
  copyWith: false,
  equal: false,
)
class WeatherResponseModel with _$WeatherResponseModel {

  const factory WeatherResponseModel(
      String id,
      String main,
      String description,
      String icon,
      ) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);
}


@Freezed(
  copyWith: false,
  equal: false,
)
class MainResponseModel with _$MainResponseModel {
  const factory MainResponseModel(
      String temp,
      String feels_like,
      String temp_min,
      String temp_max,
      String pressure,
      String humidity,
      String sea_level,
      String grnd_level,
      ) = _MainResponseModel;

  factory MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainResponseModelFromJson(json);
}

@Freezed(
  copyWith: false,
  equal: false,
)
class WindResponseModel with _$WindResponseModel {
  const factory WindResponseModel(
      String speed,
      String deg,
      String gust,
      ) = _WindResponseModel;

  factory WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WindResponseModelFromJson(json);
}

@Freezed(
  copyWith: false,
  equal: false,
)
class CloudsResponseModel with _$CloudsResponseModel {
  const factory CloudsResponseModel(
      String all,
      ) = _CloudsResponseModel;

  factory CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsResponseModelFromJson(json);
}

@Freezed(
  copyWith: false,
  equal: false,
)
class SysResponseModel with _$SysResponseModel {
  const factory SysResponseModel(
      String country,
      String sunrise,
      String sunset,
      ) = _SysResponseModel;

  factory SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SysResponseModelFromJson(json);
}
