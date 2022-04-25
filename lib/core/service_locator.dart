import 'package:get_it/get_it.dart';
import 'package:weather/data/network/current_weather_api.dart';
import 'package:weather/data/repositories/current_weather_repository_implementation.dart';
import 'package:weather/data/repositories/data_sources/current_weather_local_data_source.dart';
import 'package:weather/data/repositories/data_sources/current_weather_remote_data_source.dart';
import 'package:weather/data/api_provider/sunny_api_provider.dart';
import 'package:weather/domain/repositories/current_weather_repository.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await sl.reset();

  sl.registerSingleton<SunnyApiProvider>(SunnyApiProvider());

  sl.registerFactory<CurrentWeatherApi>(() => CurrentWeatherApi());
  sl.registerFactory<CurrentWeatherRemoteDataSource>(() => CurrentWeatherRemoteDataSourceImpl());
  sl.registerFactory<CurrentWeatherRepository>(() => CurrentWeatherRepositoryImpl());
  sl.registerFactory<CurrentWeatherLocalDataSource>(() => CurrentWeatherLocalDataSourceImpl());

}