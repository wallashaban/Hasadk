import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasadk/core/base_use_case/base_use_case.dart';

import '../../../core/error/exception.dart';
import '../../../core/network/api_constant.dart';
import '../../../core/network/error_message_model.dart';
import '../models/authentication_model.dart';

abstract class BaseAuthenticationRemoteDataSource {
  Future<AuthenticationModel> registerUser(RegisterParameters parameters);
  Future<AuthenticationModel> loginUser(LoginParameters parameters);
  Future<AuthenticationModel> loginWithMobile(LoginWithPhone parameters);
  Future<AuthenticationModel> updatePassword(PasswordParameters parameters);
  Future<AuthenticationModel> resetPassword(PasswordParameters parameters);
  Future<void> forgetPassword(String email);
  Future<void> logOut();
  Future<AuthenticationModel> getMe();
}

class AuthenticationRemoteDataSource
    implements BaseAuthenticationRemoteDataSource {
  Dio? dio;

  AuthenticationRemoteDataSource() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      receiveDataWhenStatusError: true,
        headers: {
         'Content-Type': 'application/json',
         'Accept': 'text/plain',


        }
    );
    dio = Dio(options);
  }

  @override
  Future<void> forgetPassword(String email) async {
    final Response response =
        await dio!.post(ApiConstant.forgetPassword, queryParameters: {
      'email': email,
    });
    if (response.statusCode == 200) {
      debugPrint('forget remote data ${response.data}');
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> getMe() async {
    final Response response = await dio!.get(
      ApiConstant.getMyProfile,
    );
    if (response.statusCode == 200) {
      debugPrint('get me remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<void> logOut() async {
    final Response response = await dio!.get(
      ApiConstant.logOut,
    );
    if (response.statusCode == 200) {
      debugPrint('logout remote data ${response.data}');
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> loginUser(LoginParameters parameters) async {
    FormData data = FormData.fromMap({
      'email':parameters.email,
      'password':parameters.password,
    });
    final Response response =
        await dio!.post(ApiConstant.login, data: data);
    if (response.data['status'] == 'success') {
      debugPrint('login remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> loginWithMobile(LoginWithPhone parameters) async {
    final Response response =
        await dio!.post(ApiConstant.loginWithPhone, queryParameters: {
      'telephone': parameters.telephone,
      'password': parameters.password,
    });
    if (response.statusCode == 200) {
      debugPrint('login mobile remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> registerUser(
      RegisterParameters parameters) async {
    final Response response =
        await dio!.post(ApiConstant.register, queryParameters: {
      'firstName': parameters.firstName,
      'lastName': parameters.lastName,
      'email': parameters.email,
      'telephone': parameters.telephone,
      'password': parameters.password,
      'passwordConfirm': parameters.passwordConfirm,
    });
    if (response.statusCode == 201) {
      debugPrint('register remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> resetPassword(
      PasswordParameters parameters) async {
    final Response response =
        await dio!.patch(ApiConstant.resetPassword('code'), queryParameters: {
      'password': parameters.password,
      'passwordConfirm': parameters.passwordConfirm,
    });
    if (response.statusCode == 200) {
      debugPrint('reset remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<AuthenticationModel> updatePassword(
      PasswordParameters parameters) async {
    final Response response =
        await dio!.patch(ApiConstant.updatePassword, queryParameters: {
      'passwordCurrent': parameters.oldPassword,
      'password': parameters.password,
      'passwordConfirm': parameters.passwordConfirm,
    });
    if (response.statusCode == 200) {
      debugPrint('login remote data ${response.data}');
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
