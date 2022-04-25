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
  int get visibility => throw _privateConstructorUsedError;
  WindResponseModel get wind => throw _privateConstructorUsedError;
  CloudsResponseModel get clouds => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;
  SysResponseModel get sys => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherResponse extends _CurrentWeatherResponse {
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
      : _weather = weather,
        super._();

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
  final int visibility;
  @override
  final WindResponseModel wind;
  @override
  final CloudsResponseModel clouds;
  @override
  final int dt;
  @override
  final SysResponseModel sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherResponseToJson(this);
  }
}

abstract class _CurrentWeatherResponse extends CurrentWeatherResponse {
  const factory _CurrentWeatherResponse(
      final CoordResponseModel coord,
      final List<WeatherResponseModel> weather,
      final String base,
      final MainResponseModel main,
      final int visibility,
      final WindResponseModel wind,
      final CloudsResponseModel clouds,
      final int dt,
      final SysResponseModel sys,
      final int timezone,
      final int id,
      final String name,
      final int cod) = _$_CurrentWeatherResponse;
  const _CurrentWeatherResponse._() : super._();

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
  int get visibility => throw _privateConstructorUsedError;
  @override
  WindResponseModel get wind => throw _privateConstructorUsedError;
  @override
  CloudsResponseModel get clouds => throw _privateConstructorUsedError;
  @override
  int get dt => throw _privateConstructorUsedError;
  @override
  SysResponseModel get sys => throw _privateConstructorUsedError;
  @override
  int get timezone => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get cod => throw _privateConstructorUsedError;
}

CoordResponseModel _$CoordResponseModelFromJson(Map<String, dynamic> json) {
  return _CoordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CoordResponseModel {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CoordResponseModel extends _CoordResponseModel {
  const _$_CoordResponseModel(this.lon, this.lat) : super._();

  factory _$_CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoordResponseModelFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'CoordResponseModel(lon: $lon, lat: $lat)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordResponseModelToJson(this);
  }
}

abstract class _CoordResponseModel extends CoordResponseModel {
  const factory _CoordResponseModel(final double lon, final double lat) =
      _$_CoordResponseModel;
  const _CoordResponseModel._() : super._();

  factory _CoordResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CoordResponseModel.fromJson;

  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
}

WeatherResponseModel _$WeatherResponseModelFromJson(Map<String, dynamic> json) {
  return _WeatherResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponseModel extends _WeatherResponseModel {
  const _$_WeatherResponseModel(this.id, this.main, this.description, this.icon)
      : super._();

  factory _$_WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseModelFromJson(json);

  @override
  final int id;
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

abstract class _WeatherResponseModel extends WeatherResponseModel {
  const factory _WeatherResponseModel(final int id, final String main,
      final String description, final String icon) = _$_WeatherResponseModel;
  const _WeatherResponseModel._() : super._();

  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponseModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
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
  double get temp => throw _privateConstructorUsedError;
  double get feels_like => throw _privateConstructorUsedError;
  double get temp_min => throw _privateConstructorUsedError;
  double get temp_max => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_MainResponseModel extends _MainResponseModel {
  const _$_MainResponseModel(this.temp, this.feels_like, this.temp_min,
      this.temp_max, this.pressure, this.humidity)
      : super._();

  factory _$_MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainResponseModelFromJson(json);

  @override
  final double temp;
  @override
  final double feels_like;
  @override
  final double temp_min;
  @override
  final double temp_max;
  @override
  final double pressure;
  @override
  final double humidity;

  @override
  String toString() {
    return 'MainResponseModel(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainResponseModelToJson(this);
  }
}

abstract class _MainResponseModel extends MainResponseModel {
  const factory _MainResponseModel(
      final double temp,
      final double feels_like,
      final double temp_min,
      final double temp_max,
      final double pressure,
      final double humidity) = _$_MainResponseModel;
  const _MainResponseModel._() : super._();

  factory _MainResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MainResponseModel.fromJson;

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  double get feels_like => throw _privateConstructorUsedError;
  @override
  double get temp_min => throw _privateConstructorUsedError;
  @override
  double get temp_max => throw _privateConstructorUsedError;
  @override
  double get pressure => throw _privateConstructorUsedError;
  @override
  double get humidity => throw _privateConstructorUsedError;
}

WindResponseModel _$WindResponseModelFromJson(Map<String, dynamic> json) {
  return _WindResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WindResponseModel {
  double get speed => throw _privateConstructorUsedError;
  double get deg => throw _privateConstructorUsedError;
  double get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_WindResponseModel extends _WindResponseModel {
  const _$_WindResponseModel(this.speed, this.deg, this.gust) : super._();

  factory _$_WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WindResponseModelFromJson(json);

  @override
  final double speed;
  @override
  final double deg;
  @override
  final double gust;

  @override
  String toString() {
    return 'WindResponseModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindResponseModelToJson(this);
  }
}

abstract class _WindResponseModel extends WindResponseModel {
  const factory _WindResponseModel(
          final double speed, final double deg, final double gust) =
      _$_WindResponseModel;
  const _WindResponseModel._() : super._();

  factory _WindResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WindResponseModel.fromJson;

  @override
  double get speed => throw _privateConstructorUsedError;
  @override
  double get deg => throw _privateConstructorUsedError;
  @override
  double get gust => throw _privateConstructorUsedError;
}

CloudsResponseModel _$CloudsResponseModelFromJson(Map<String, dynamic> json) {
  return _CloudsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CloudsResponseModel {
  int get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_CloudsResponseModel extends _CloudsResponseModel {
  const _$_CloudsResponseModel(this.all) : super._();

  factory _$_CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CloudsResponseModelFromJson(json);

  @override
  final int all;

  @override
  String toString() {
    return 'CloudsResponseModel(all: $all)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudsResponseModelToJson(this);
  }
}

abstract class _CloudsResponseModel extends CloudsResponseModel {
  const factory _CloudsResponseModel(final int all) = _$_CloudsResponseModel;
  const _CloudsResponseModel._() : super._();

  factory _CloudsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CloudsResponseModel.fromJson;

  @override
  int get all => throw _privateConstructorUsedError;
}

SysResponseModel _$SysResponseModelFromJson(Map<String, dynamic> json) {
  return _SysResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SysResponseModel {
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_SysResponseModel extends _SysResponseModel {
  const _$_SysResponseModel(this.country, this.sunrise, this.sunset)
      : super._();

  factory _$_SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SysResponseModelFromJson(json);

  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'SysResponseModel(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SysResponseModelToJson(this);
  }
}

abstract class _SysResponseModel extends SysResponseModel {
  const factory _SysResponseModel(
          final String country, final int sunrise, final int sunset) =
      _$_SysResponseModel;
  const _SysResponseModel._() : super._();

  factory _SysResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SysResponseModel.fromJson;

  @override
  String get country => throw _privateConstructorUsedError;
  @override
  int get sunrise => throw _privateConstructorUsedError;
  @override
  int get sunset => throw _privateConstructorUsedError;
}
