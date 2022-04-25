// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentWeatherResponseAdapter
    extends TypeAdapter<CurrentWeatherResponse> {
  @override
  final int typeId = 0;

  @override
  CurrentWeatherResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentWeatherResponse(
      fields[0] as CoordResponseModel,
      (fields[1] as List).cast<WeatherResponseModel>(),
      fields[2] as String,
      fields[3] as MainResponseModel,
      fields[4] as int,
      fields[5] as WindResponseModel,
      fields[6] as CloudsResponseModel,
      fields[7] as int,
      fields[8] as SysResponseModel,
      fields[9] as int,
      fields[10] as int,
      fields[11] as String,
      fields[12] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentWeatherResponse obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.coord)
      ..writeByte(1)
      ..write(obj.weather)
      ..writeByte(2)
      ..write(obj.base)
      ..writeByte(3)
      ..write(obj.main)
      ..writeByte(4)
      ..write(obj.visibility)
      ..writeByte(5)
      ..write(obj.wind)
      ..writeByte(6)
      ..write(obj.clouds)
      ..writeByte(7)
      ..write(obj.dt)
      ..writeByte(8)
      ..write(obj.sys)
      ..writeByte(9)
      ..write(obj.timezone)
      ..writeByte(10)
      ..write(obj.id)
      ..writeByte(11)
      ..write(obj.name)
      ..writeByte(12)
      ..write(obj.cod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentWeatherResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoordResponseModelAdapter extends TypeAdapter<_$_CoordResponseModel> {
  @override
  final int typeId = 1;

  @override
  _$_CoordResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CoordResponseModel(
      fields[0] as double,
      fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CoordResponseModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.lon)
      ..writeByte(1)
      ..write(obj.lat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeatherResponseModelAdapter extends TypeAdapter<_$_WeatherResponseModel> {
  @override
  final int typeId = 2;

  @override
  _$_WeatherResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WeatherResponseModel(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_WeatherResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.main)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MainResponseModelAdapter extends TypeAdapter<_$_MainResponseModel> {
  @override
  final int typeId = 3;

  @override
  _$_MainResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MainResponseModel(
      fields[0] as double,
      fields[1] as double,
      fields[2] as double,
      fields[3] as double,
      fields[4] as double,
      fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MainResponseModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.temp)
      ..writeByte(1)
      ..write(obj.feels_like)
      ..writeByte(2)
      ..write(obj.temp_min)
      ..writeByte(3)
      ..write(obj.temp_max)
      ..writeByte(4)
      ..write(obj.pressure)
      ..writeByte(5)
      ..write(obj.humidity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WindResponseModelAdapter extends TypeAdapter<_$_WindResponseModel> {
  @override
  final int typeId = 4;

  @override
  _$_WindResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WindResponseModel(
      fields[0] as double,
      fields[1] as double,
      fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_WindResponseModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.speed)
      ..writeByte(1)
      ..write(obj.deg)
      ..writeByte(2)
      ..write(obj.gust);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WindResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CloudsResponseModelAdapter extends TypeAdapter<_$_CloudsResponseModel> {
  @override
  final int typeId = 5;

  @override
  _$_CloudsResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CloudsResponseModel(
      fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CloudsResponseModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.all);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CloudsResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SysResponseModelAdapter extends TypeAdapter<_$_SysResponseModel> {
  @override
  final int typeId = 6;

  @override
  _$_SysResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SysResponseModel(
      fields[0] as String?,
      fields[1] as int,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SysResponseModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.sunrise)
      ..writeByte(2)
      ..write(obj.sunset);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SysResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    CurrentWeatherResponse(
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

_$_CoordResponseModel _$$_CoordResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CoordResponseModel(
      (json['lon'] as num).toDouble(),
      (json['lat'] as num).toDouble(),
    );

_$_WeatherResponseModel _$$_WeatherResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherResponseModel(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

_$_MainResponseModel _$$_MainResponseModelFromJson(Map<String, dynamic> json) =>
    _$_MainResponseModel(
      (json['temp'] as num).toDouble(),
      (json['feels_like'] as num).toDouble(),
      (json['temp_min'] as num).toDouble(),
      (json['temp_max'] as num).toDouble(),
      (json['pressure'] as num).toDouble(),
      (json['humidity'] as num).toDouble(),
    );

_$_WindResponseModel _$$_WindResponseModelFromJson(Map<String, dynamic> json) =>
    _$_WindResponseModel(
      (json['speed'] as num).toDouble(),
      (json['deg'] as num).toDouble(),
      (json['gust'] as num).toDouble(),
    );

_$_CloudsResponseModel _$$_CloudsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CloudsResponseModel(
      json['all'] as int,
    );

_$_SysResponseModel _$$_SysResponseModelFromJson(Map<String, dynamic> json) =>
    _$_SysResponseModel(
      json['country'] as String?,
      json['sunrise'] as int,
      json['sunset'] as int,
    );
