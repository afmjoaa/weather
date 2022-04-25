import 'package:weather/core/service_locator.dart';
import 'package:weather/data/models/base_model/base_model.dart';
import 'package:weather/data/models/current_weather_query_params.dart';
import 'package:weather/data/models/current_weather_response.dart';
import 'package:weather/data/models/error_response.dart';
import 'package:weather/data/sunny_api_provider.dart';

import 'base_api.dart';

class CurrentWeatherApi extends BaseApi<
    CurrentWeatherQueryParams,
    CurrentWeatherResponse,
ErrorResponse
> {

  CurrentWeatherApi()
      : super(SunnyApiProvider.currentWeather, sl<SunnyApiProvider>());

  @override
  BaseModel mapResponse(Map<String, dynamic>? responseJson) {
    return CurrentWeatherResponse.fromJson(responseJson!);
  }

}