import 'package:dio/dio.dart';

import '../network/api_constant.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? bearerToken,
    String lang = 'en',
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      if (bearerToken != null) "Authorization": "Bearer $bearerToken",
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    dynamic query,
    dynamic data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      if (token != null) "Authorization": "Bearer $token",
      'Accept': 'text/plain',
    };
    return await dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> deleteData({
    required String url,
    dynamic query,
    dynamic data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      if (token != null) "Authorization": "Bearer $token",
      'Accept': 'text/plain',
    };
    return await dio.delete(url, queryParameters: query, data: data);
  }

  static Future<Response> putData({
    required String url,
    dynamic query,
    dynamic data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      if (token != null) "Authorization": "Bearer $token",
      'Accept': 'text/plain',
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> patchData({
    required String url,
    dynamic query,
    dynamic data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      if (token != null) "Authorization": "Bearer $token",
      'Accept': 'text/plain',
    };
    return await dio.patch(url, queryParameters: query, data: data);
  }
}