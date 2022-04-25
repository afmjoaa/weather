import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather/data/base_api_provider.dart';
import 'package:weather/data/models/base_model/base_model.dart';

abstract class BaseApi<TQuery extends BaseModel, TRes extends BaseModel, TErr extends BaseModel> {
  String url;
  BaseApiProvider apiProvider;

  BaseApi(this.url, this.apiProvider);

  Future<Response<Map<String, dynamic>>> getRaw(
      {
        Map<String, String>? headers,
        Map<String, dynamic>? queryParameters
      }) async {
    Response<Map<String, dynamic>> response = await apiProvider.dio.get(
      url,
      options: Options(
        headers: headers ?? {'Content-Type': 'application/json'},
        sendTimeout: BaseApiProvider.connectTimeout,
        receiveTimeout: BaseApiProvider.receiveTimeout,
      ),
      queryParameters: queryParameters
    );
    return response;
  }

  Future<Either<TRes, TErr>> get({Map<String, String>? headers, Map<String, dynamic>? queryParameters}) async {
    try {
      Response<Map<String, dynamic>> response = await getRaw(headers: headers, queryParameters: queryParameters);

      return Left(mapResponse(response.data) as TRes);
    } catch (err) {
      return Right(generate(err) as TErr);
    }
  }


  BaseModel generate(dynamic error) {
    BaseModel baseError ;
      if (error.type == DioErrorType.receiveTimeout
          || error.type == DioErrorType.connectTimeout
          || error.type == DioErrorType.sendTimeout){
        baseError = mapResponse({'cod': "9999", 'message': error.message});
      } else {
        baseError = mapResponse(error.response?.data as Map<String, dynamic>?);
      }

    return baseError;
  }

  BaseModel mapResponse(Map<String, dynamic>? responseJson);
}
