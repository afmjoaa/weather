
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather/data/api_provider/base_api_provider.dart';
import 'package:weather/utility/sunny_texts.dart';
import 'package:weather/utility/utility.dart';

import '../models/error_response.dart';

class SunnyApiProvider extends BaseApiProvider{

  SunnyApiProvider() {
    BaseOptions options = createBaseOptions();
    dio = Dio(options);

    dio.interceptors.add(logInterceptor);
    dio.interceptors.add(getLoadingInterceptor());
  }

  //#region Interceptors
  Interceptor logInterceptor =
    LogInterceptor(responseBody: true, requestBody: true, requestHeader: true);

  Interceptor getLoadingInterceptor() => InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
      Utility.startLoadingAnimation();
      handler.next(options);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      Utility.completeLoadingAnimation();
      handler.next(response); // continue
    },
    onError: (DioError error, ErrorInterceptorHandler handler) async {
      String errorMessage = SunnyTexts.get()['anErrorOccurred'];

      if (error.response != null && error.response!.data != null) {
        var errorResponse = ErrorResponse.fromJson(error.response!.data);
        errorMessage = errorResponse.message;
      } else if (error.message.isNotEmpty) {
        errorMessage = await connectionCheck();
      }

      Utility.showLoadingFailedError(errorMessage);
      handler.next(error);
    },
  );
  //#endregion

  Future<String> connectionCheck() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return SunnyTexts.get()['noOrSlowInternetConnection'];
      }
    } on SocketException catch (_) {
      return SunnyTexts.get()['networkConnectivityError'];
    }
    return SunnyTexts.get()['anErrorOccurred'];
  }

  BaseOptions createBaseOptions() {
    final Map<String, String> _baseHeaders = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    BaseOptions options =
    BaseOptions(baseUrl: 'https://api.openweathermap.org/data/2.5/', headers: _baseHeaders);
    return options;
  }

  static String get currentWeather => 'weather';

}