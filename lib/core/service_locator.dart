import 'package:get_it/get_it.dart';
import 'package:weather/data/sunny_api_provider.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await sl.reset();

  sl.registerSingleton<SunnyApiProvider>(SunnyApiProvider());
  sl.registerSingleton<SunnyApiProvider>(SunnyApiProvider());
}