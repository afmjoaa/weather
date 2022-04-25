// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeatherQueryParams _$$_CurrentWeatherQueryParamsFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentWeatherQueryParams(
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
      json['appid'] as String,
      json['units'] as String,
    );

Map<String, dynamic> _$$_CurrentWeatherQueryParamsToJson(
        _$_CurrentWeatherQueryParams instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appid,
      'units': instance.units,
    };
