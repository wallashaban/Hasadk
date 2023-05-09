import 'package:dartz/dartz.dart';

import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';

abstract class BaseAuthenticationRepository {
  Future<Either<Failure,Authentication>> registerUser(RegisterParameters parameters);
  Future<Either<Failure,Authentication>> loginUser(LoginParameters parameters);
  Future<Either<Failure,Authentication>> loginWithMobile(LoginWithPhone parameters);
  Future<Either<Failure,void>> forgetPassword(String email);
  Future<Either<Failure,Authentication>> resetPassword(PasswordParameters parameters);
  Future<Either<Failure,Authentication>> updatePassword(PasswordParameters parameters);
    Future<Either<Failure,void>> logOut();
  Future<Either<Failure,Authentication>> getMe();
}

