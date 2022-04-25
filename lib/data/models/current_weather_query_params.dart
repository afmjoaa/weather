import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/data/models/base_model/base_model.dart';

part 'current_weather_query_params.freezed.dart';
part 'current_weather_query_params.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class CurrentWeatherQueryParams extends BaseModel with _$CurrentWeatherQueryParams {

  const factory CurrentWeatherQueryParams(
      double lat,
      double lon,
      String appid,
      String units,
      ) = _CurrentWeatherQueryParams;

  factory CurrentWeatherQueryParams.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherQueryParamsFromJson(json);

}