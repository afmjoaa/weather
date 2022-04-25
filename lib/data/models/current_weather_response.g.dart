// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeatherResponse _$$_CurrentWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentWeatherResponse(
      CoordResponseModel.fromJson(json['coord'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['base'] as String,
      MainResponseModel.fromJson(json['main'] as Map<String, dynamic>),
      json['visibility'] as int,
      WindResponseModel.fromJson(json['wind'] as Map<String, dynamic>),
      CloudsResponseModel.fromJson(json['clouds'] as Map<String, dynamic>),
      json['dt'] as int,
      SysResponseModel.fromJson(json['sys'] as Map<String, dynamic>),
      json['timezone'] as int,
      json['id'] as int,
      json['name'] as String,
      json['cod'] as int,
    );

Map<String, dynamic> _$$_CurrentWeatherResponseToJson(
        _$_CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_$_CoordResponseModel _$$_CoordResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CoordResponseModel(
      (json['lon'] as num).toDouble(),
      (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordResponseModelToJson(
        _$_CoordResponseModel instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$_WeatherResponseModel _$$_WeatherResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherResponseModel(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherResponseModelToJson(
        _$_WeatherResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_MainResponseModel _$$_MainResponseModelFromJson(Map<String, dynamic> json) =>
    _$_MainResponseModel(
      (json['temp'] as num).toDouble(),
      (json['feels_like'] as num).toDouble(),
      (json['temp_min'] as num).toDouble(),
      (json['temp_max'] as num).toDouble(),
      (json['pressure'] as num).toDouble(),
      (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainResponseModelToJson(
        _$_MainResponseModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$_WindResponseModel _$$_WindResponseModelFromJson(Map<String, dynamic> json) =>
    _$_WindResponseModel(
      (json['speed'] as num).toDouble(),
      (json['deg'] as num).toDouble(),
      (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WindResponseModelToJson(
        _$_WindResponseModel instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

_$_CloudsResponseModel _$$_CloudsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CloudsResponseModel(
      json['all'] as int,
    );

Map<String, dynamic> _$$_CloudsResponseModelToJson(
        _$_CloudsResponseModel instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

_$_SysResponseModel _$$_SysResponseModelFromJson(Map<String, dynamic> json) =>
    _$_SysResponseModel(
      json['country'] as String,
      json['sunrise'] as int,
      json['sunset'] as int,
    );

Map<String, dynamic> _$$_SysResponseModelToJson(_$_SysResponseModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
