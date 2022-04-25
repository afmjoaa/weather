import 'package:dio/dio.dart';
import 'package:weather/data/base_api_provider.dart';
import 'package:weather/data/models/base_model/base_model.dart';

abstract class BaseApi<TReq extends BaseModel, TRes extends BaseModel, TErr extends BaseModel> {
  String url;
  BaseApiProvider apiProvider;

  BaseApi(this.url, this.apiProvider);

  Future<Response<Map<String, dynamic>>> getRaw({Map<String, String>? headers}) async {
    Response<Map<String, dynamic>> response = await apiProvider.dio.get(
      url,
      options: Options(
        headers: headers ?? {'Content-Type': 'application/json'},
        sendTimeout: BaseApiProvider.connectTimeout,
        receiveTimeout: BaseApiProvider.receiveTimeout,
      ),
    );
    return response;
  }

  // Future<Either<TRes, TErr>> get({Map<String, String>? headers}) async {
  //   try {
  //     Response<Map<String, dynamic>> response = await getRaw(headers: headers);
  //
  //     return Left(mapResponse(response.data) as TRes);
  //   } on DioError catch (error) {
  //     return Right(generate(error) as TErr);
  //   } catch (err) {
  //     return Right(generate(err) as TErr);
  //   }
  // }
  //
  // BaseError generate(dynamic error) {
  //   BaseError baseError ;
  //   if (error is DioError) {
  //     if (error.type == DioErrorType.receiveTimeout
  //         || error.type == DioErrorType.connectTimeout
  //         || error.type == DioErrorType.sendTimeout){
  //       baseError = mapErrResponse({});
  //     } else {
  //       baseError = mapErrResponse(error.response?.data as Map<String, dynamic>?);
  //     }
  //   }
  //
  //   return baseError;
  // }
  //  BaseError mapErrResponse(Map<String, dynamic>? responseJson);


  BaseModel mapResponse(Map<String, dynamic>? responseJson);
}
