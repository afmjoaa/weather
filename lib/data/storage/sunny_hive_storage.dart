import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:weather/data/models/current_weather_response.dart';

import 'hive_type_ids.dart';

class SunnyHiveStorage {
  static final SunnyHiveStorage _instance = SunnyHiveStorage._();

  factory SunnyHiveStorage() {
    return _instance;
  }

  SunnyHiveStorage._();

  static Future<void> init() async {
    await _initHiveAdapters();
  }

  static Future<void> _initHiveAdapters() async {

    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path + "/my_challenges");

    if (!Hive.isAdapterRegistered(HiveTypeIds.currentWeatherResponse)) Hive.registerAdapter(CurrentWeatherResponseAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.coordResponseModel)) Hive.registerAdapter(CoordResponseModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.weatherResponseModel)) Hive.registerAdapter(WeatherResponseModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.mainResponseModel)) Hive.registerAdapter(MainResponseModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.windResponseModel)) Hive.registerAdapter(WindResponseModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.cloudsResponseModel)) Hive.registerAdapter(CloudsResponseModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTypeIds.sysResponseModel)) Hive.registerAdapter(SysResponseModelAdapter());
  }

  static void clear() async {
    await Hive.close();
  }
}