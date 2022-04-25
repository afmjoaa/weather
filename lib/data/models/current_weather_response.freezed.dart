// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherResponse {
  CoordResponseModel get coord => throw _privateConstructorUsedError;
  List<WeatherResponseModel> get weather => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  MainResponseModel get main => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  WindResponseModel get wind => throw _privateConstructorUsedError;
  CloudsResponseModel get clouds => throw _privateConstructorUsedError;
  String get dt => throw _privateConstructorUsedError;
  SysResponseModel get sys => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherResponse implements _CurrentWeatherResponse {
  const _$_CurrentWeatherResponse(
      this.coord,
      final List<WeatherResponseModel> weather,
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
      this.cod)
      : _weather = weather;

  factory _$_CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherResponseFromJson(json);

  @override
  final CoordResponseModel coord;
  final List<WeatherResponseModel> _weather;
  @override
  List<WeatherResponseModel> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String base;
  @override
  final MainResponseModel main;
  @override
  final String visibility;
  @override
  final WindResponseModel wind;
  @override
  final CloudsResponseModel clouds;
  @override
  final String dt;
  @override
  final SysResponseModel sys;
  @override
  final String timezone;
  @override
  final String id;
  @override
  final String name;
  @override
  final String cod;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherResponseToJson(this);
  }
}

abstract class _CurrentWeatherResponse implements CurrentWeatherResponse {
  const factory _CurrentWeatherResponse(
      final CoordResponseModel coord,
      final List<WeatherResponseModel> weather,
      final String base,
      final MainResponseModel main,
      final String visibility,
      final WindResponseModel wind,
      final CloudsResponseModel clouds,
      final String dt,
      final SysResponseModel sys,
      final String timezone,
      final String id,
      final String name,
      final String cod) = _$_CurrentWeatherResponse;

  factory _CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeatherResponse.fromJson;

  @override
  CoordResponseModel get coord => throw _privateConstructorUsedError;
  @override
  List<WeatherResponseModel> get weather => throw _privateConstructorUsedError;
  @override
  String get base => throw _privateConstructorUsedError;
  @override
  MainResponseModel get main => throw _privateConstructorUsedError;
  @override
  String get visibility => throw _privateConstructorUsedError;
  @override
  WindResponseModel get wind => throw _privateConstructorUsedError;
  @override
  CloudsResponseModel get clouds => throw _privateConstructorUsedError;
  @override
  String get dt => throw _privateConstructorUsedError;
  @override
  SysResponseModel get sys => throw _privateConstructorUsedError;
  @override
  String get timezone => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get cod => throw _privateConstructorUsedError;
}

CoordResponseModel _$CoordResponseModelFromJson(Map<String, dynamic> json) {
  return _CoordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CoordResponseModel {
  String get lon => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CoordResponseModel implements _CoordResponseModel {
  const _$_CoordResponseModel(this.lon, this.lat);

  factory _$_CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoordResponseModelFromJson(json);

  @override
  final String lon;
  @override
  final String lat;

  @override
  String toString() {
    return 'CoordResponseModel(lon: $lon, lat: $lat)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordResponseModelToJson(this);
  }
}

abstract class _CoordResponseModel implements CoordResponseModel {
  const factory _CoordResponseModel(final String lon, final String lat) =
      _$_CoordResponseModel;

  factory _CoordResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CoordResponseModel.fromJson;

  @override
  String get lon => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
}

WeatherResponseModel _$WeatherResponseModelFromJson(Map<String, dynamic> json) {
  return _WeatherResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseModel {
  String get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponseModel implements _WeatherResponseModel {
  const _$_WeatherResponseModel(
      this.id, this.main, this.description, this.icon);

  factory _$_WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseModelFromJson(json);

  @override
  final String id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherResponseModel(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseModelToJson(this);
  }
}

abstract class _WeatherResponseModel implements WeatherResponseModel {
  const factory _WeatherResponseModel(final String id, final String main,
      final String description, final String icon) = _$_WeatherResponseModel;

  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponseModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get main => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
}

MainResponseModel _$MainResponseModelFromJson(Map<String, dynamic> json) {
  return _MainResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MainResponseModel {
  String get temp => throw _privateConstructorUsedError;
  String get feels_like => throw _privateConstructorUsedError;
  String get temp_min => throw _privateConstructorUsedError;
  String get temp_max => throw _privateConstructorUsedError;
  String get pressure => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;
  String get sea_level => throw _privateConstructorUsedError;
  String get grnd_level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_MainResponseModel implements _MainResponseModel {
  const _$_MainResponseModel(
      this.temp,
      this.feels_like,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.humidity,
      this.sea_level,
      this.grnd_level);

  factory _$_MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainResponseModelFromJson(json);

  @override
  final String temp;
  @override
  final String feels_like;
  @override
  final String temp_min;
  @override
  final String temp_max;
  @override
  final String pressure;
  @override
  final String humidity;
  @override
  final String sea_level;
  @override
  final String grnd_level;

  @override
  String toString() {
    return 'MainResponseModel(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity, sea_level: $sea_level, grnd_level: $grnd_level)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainResponseModelToJson(this);
  }
}

abstract class _MainResponseModel implements MainResponseModel {
  const factory _MainResponseModel(
      final String temp,
      final String feels_like,
      final String temp_min,
      final String temp_max,
      final String pressure,
      final String humidity,
      final String sea_level,
      final String grnd_level) = _$_MainResponseModel;

  factory _MainResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MainResponseModel.fromJson;

  @override
  String get temp => throw _privateConstructorUsedError;
  @override
  String get feels_like => throw _privateConstructorUsedError;
  @override
  String get temp_min => throw _privateConstructorUsedError;
  @override
  String get temp_max => throw _privateConstructorUsedError;
  @override
  String get pressure => throw _privateConstructorUsedError;
  @override
  String get humidity => throw _privateConstructorUsedError;
  @override
  String get sea_level => throw _privateConstructorUsedError;
  @override
  String get grnd_level => throw _privateConstructorUsedError;
}

WindResponseModel _$WindResponseModelFromJson(Map<String, dynamic> json) {
  return _WindResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WindResponseModel {
  String get speed => throw _privateConstructorUsedError;
  String get deg => throw _privateConstructorUsedError;
  String get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_WindResponseModel implements _WindResponseModel {
  const _$_WindResponseModel(this.speed, this.deg, this.gust);

  factory _$_WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WindResponseModelFromJson(json);

  @override
  final String speed;
  @override
  final String deg;
  @override
  final String gust;

  @override
  String toString() {
    return 'WindResponseModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindResponseModelToJson(this);
  }
}

abstract class _WindResponseModel implements WindResponseModel {
  const factory _WindResponseModel(
          final String speed, final String deg, final String gust) =
      _$_WindResponseModel;

  factory _WindResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WindResponseModel.fromJson;

  @override
  String get speed => throw _privateConstructorUsedError;
  @override
  String get deg => throw _privateConstructorUsedError;
  @override
  String get gust => throw _privateConstructorUsedError;
}

CloudsResponseModel _$CloudsResponseModelFromJson(Map<String, dynamic> json) {
  return _CloudsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CloudsResponseModel {
  String get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CloudsResponseModel implements _CloudsResponseModel {
  const _$_CloudsResponseModel(this.all);

  factory _$_CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CloudsResponseModelFromJson(json);

  @override
  final String all;

  @override
  String toString() {
    return 'CloudsResponseModel(all: $all)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudsResponseModelToJson(this);
  }
}

abstract class _CloudsResponseModel implements CloudsResponseModel {
  const factory _CloudsResponseModel(final String all) = _$_CloudsResponseModel;

  factory _CloudsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CloudsResponseModel.fromJson;

  @override
  String get all => throw _privateConstructorUsedError;
}

SysResponseModel _$SysResponseModelFromJson(Map<String, dynamic> json) {
  return _SysResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SysResponseModel {
  String get country => throw _privateConstructorUsedError;
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_SysResponseModel implements _SysResponseModel {
  const _$_SysResponseModel(this.country, this.sunrise, this.sunset);

  factory _$_SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SysResponseModelFromJson(json);

  @override
  final String country;
  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString() {
    return 'SysResponseModel(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SysResponseModelToJson(this);
  }
}

abstract class _SysResponseModel implements SysResponseModel {
  const factory _SysResponseModel(
          final String country, final String sunrise, final String sunset) =
      _$_SysResponseModel;

  factory _SysResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SysResponseModel.fromJson;

  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get sunrise => throw _privateConstructorUsedError;
  @override
  String get sunset => throw _privateConstructorUsedError;
}
