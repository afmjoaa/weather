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

CoordResponseModel _$CoordResponseModelFromJson(Map<String, dynamic> json) {
  return _CoordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CoordResponseModel {
  @HiveField(0)
  double get lon => throw _privateConstructorUsedError;
  @HiveField(1)
  double get lat => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.coordResponseModel,
    adapterName: 'CoordResponseModelAdapter')
class _$_CoordResponseModel extends _CoordResponseModel {
  const _$_CoordResponseModel(@HiveField(0) this.lon, @HiveField(1) this.lat)
      : super._();

  factory _$_CoordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoordResponseModelFromJson(json);

  @override
  @HiveField(0)
  final double lon;
  @override
  @HiveField(1)
  final double lat;

  @override
  String toString() {
    return 'CoordResponseModel(lon: $lon, lat: $lat)';
  }
}

abstract class _CoordResponseModel extends CoordResponseModel {
  const factory _CoordResponseModel(
          @HiveField(0) final double lon, @HiveField(1) final double lat) =
      _$_CoordResponseModel;
  const _CoordResponseModel._() : super._();

  factory _CoordResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CoordResponseModel.fromJson;

  @override
  @HiveField(0)
  double get lon => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  double get lat => throw _privateConstructorUsedError;
}

WeatherResponseModel _$WeatherResponseModelFromJson(Map<String, dynamic> json) {
  return _WeatherResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get main => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get icon => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.weatherResponseModel,
    adapterName: 'WeatherResponseModelAdapter')
class _$_WeatherResponseModel extends _WeatherResponseModel {
  const _$_WeatherResponseModel(@HiveField(0) this.id, @HiveField(1) this.main,
      @HiveField(2) this.description, @HiveField(3) this.icon)
      : super._();

  factory _$_WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String main;
  @override
  @HiveField(2)
  final String description;
  @override
  @HiveField(3)
  final String icon;

  @override
  String toString() {
    return 'WeatherResponseModel(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

abstract class _WeatherResponseModel extends WeatherResponseModel {
  const factory _WeatherResponseModel(
      @HiveField(0) final int id,
      @HiveField(1) final String main,
      @HiveField(2) final String description,
      @HiveField(3) final String icon) = _$_WeatherResponseModel;
  const _WeatherResponseModel._() : super._();

  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponseModel.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get main => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get icon => throw _privateConstructorUsedError;
}

MainResponseModel _$MainResponseModelFromJson(Map<String, dynamic> json) {
  return _MainResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MainResponseModel {
  @HiveField(0)
  double get temp => throw _privateConstructorUsedError;
  @HiveField(1)
  double get feels_like => throw _privateConstructorUsedError;
  @HiveField(2)
  double get temp_min => throw _privateConstructorUsedError;
  @HiveField(3)
  double get temp_max => throw _privateConstructorUsedError;
  @HiveField(4)
  double get pressure => throw _privateConstructorUsedError;
  @HiveField(5)
  double get humidity => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.mainResponseModel,
    adapterName: 'MainResponseModelAdapter')
class _$_MainResponseModel extends _MainResponseModel {
  const _$_MainResponseModel(
      @HiveField(0) this.temp,
      @HiveField(1) this.feels_like,
      @HiveField(2) this.temp_min,
      @HiveField(3) this.temp_max,
      @HiveField(4) this.pressure,
      @HiveField(5) this.humidity)
      : super._();

  factory _$_MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainResponseModelFromJson(json);

  @override
  @HiveField(0)
  final double temp;
  @override
  @HiveField(1)
  final double feels_like;
  @override
  @HiveField(2)
  final double temp_min;
  @override
  @HiveField(3)
  final double temp_max;
  @override
  @HiveField(4)
  final double pressure;
  @override
  @HiveField(5)
  final double humidity;

  @override
  String toString() {
    return 'MainResponseModel(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity)';
  }
}

abstract class _MainResponseModel extends MainResponseModel {
  const factory _MainResponseModel(
      @HiveField(0) final double temp,
      @HiveField(1) final double feels_like,
      @HiveField(2) final double temp_min,
      @HiveField(3) final double temp_max,
      @HiveField(4) final double pressure,
      @HiveField(5) final double humidity) = _$_MainResponseModel;
  const _MainResponseModel._() : super._();

  factory _MainResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MainResponseModel.fromJson;

  @override
  @HiveField(0)
  double get temp => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  double get feels_like => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  double get temp_min => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  double get temp_max => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  double get pressure => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  double get humidity => throw _privateConstructorUsedError;
}

WindResponseModel _$WindResponseModelFromJson(Map<String, dynamic> json) {
  return _WindResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WindResponseModel {
  @HiveField(0)
  double get speed => throw _privateConstructorUsedError;
  @HiveField(1)
  double get deg => throw _privateConstructorUsedError;
  @HiveField(2)
  double get gust => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.windResponseModel,
    adapterName: 'WindResponseModelAdapter')
class _$_WindResponseModel extends _WindResponseModel {
  const _$_WindResponseModel(
      @HiveField(0) this.speed, @HiveField(1) this.deg, @HiveField(2) this.gust)
      : super._();

  factory _$_WindResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WindResponseModelFromJson(json);

  @override
  @HiveField(0)
  final double speed;
  @override
  @HiveField(1)
  final double deg;
  @override
  @HiveField(2)
  final double gust;

  @override
  String toString() {
    return 'WindResponseModel(speed: $speed, deg: $deg, gust: $gust)';
  }
}

abstract class _WindResponseModel extends WindResponseModel {
  const factory _WindResponseModel(
      @HiveField(0) final double speed,
      @HiveField(1) final double deg,
      @HiveField(2) final double gust) = _$_WindResponseModel;
  const _WindResponseModel._() : super._();

  factory _WindResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WindResponseModel.fromJson;

  @override
  @HiveField(0)
  double get speed => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  double get deg => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  double get gust => throw _privateConstructorUsedError;
}

CloudsResponseModel _$CloudsResponseModelFromJson(Map<String, dynamic> json) {
  return _CloudsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CloudsResponseModel {
  @HiveField(0)
  int get all => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.cloudsResponseModel,
    adapterName: 'CloudsResponseModelAdapter')
class _$_CloudsResponseModel extends _CloudsResponseModel {
  const _$_CloudsResponseModel(@HiveField(0) this.all) : super._();

  factory _$_CloudsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CloudsResponseModelFromJson(json);

  @override
  @HiveField(0)
  final int all;

  @override
  String toString() {
    return 'CloudsResponseModel(all: $all)';
  }
}

abstract class _CloudsResponseModel extends CloudsResponseModel {
  const factory _CloudsResponseModel(@HiveField(0) final int all) =
      _$_CloudsResponseModel;
  const _CloudsResponseModel._() : super._();

  factory _CloudsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CloudsResponseModel.fromJson;

  @override
  @HiveField(0)
  int get all => throw _privateConstructorUsedError;
}

SysResponseModel _$SysResponseModelFromJson(Map<String, dynamic> json) {
  return _SysResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SysResponseModel {
  @HiveField(0)
  String? get country => throw _privateConstructorUsedError;
  @HiveField(1)
  int get sunrise => throw _privateConstructorUsedError;
  @HiveField(2)
  int get sunset => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.sysResponseModel,
    adapterName: 'SysResponseModelAdapter')
class _$_SysResponseModel extends _SysResponseModel {
  const _$_SysResponseModel(@HiveField(0) this.country,
      @HiveField(1) this.sunrise, @HiveField(2) this.sunset)
      : super._();

  factory _$_SysResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SysResponseModelFromJson(json);

  @override
  @HiveField(0)
  final String? country;
  @override
  @HiveField(1)
  final int sunrise;
  @override
  @HiveField(2)
  final int sunset;

  @override
  String toString() {
    return 'SysResponseModel(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }
}

abstract class _SysResponseModel extends SysResponseModel {
  const factory _SysResponseModel(
      @HiveField(0) final String? country,
      @HiveField(1) final int sunrise,
      @HiveField(2) final int sunset) = _$_SysResponseModel;
  const _SysResponseModel._() : super._();

  factory _SysResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SysResponseModel.fromJson;

  @override
  @HiveField(0)
  String? get country => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int get sunrise => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int get sunset => throw _privateConstructorUsedError;
}
