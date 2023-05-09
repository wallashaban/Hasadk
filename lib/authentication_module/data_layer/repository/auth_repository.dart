import 'package:dartz/dartz.dart';
import 'package:hasadk/core/error/failure.dart';
import 'package:hasadk/core/base_use_case/base_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/entities/authentication.dart';
import '../../../core/error/exception.dart';
import '../../domain_layer/repository/base_auth_reposutory.dart';
import '../data_sourde/auth_remote_data_source.dart';


class AuthenticationRepository implements BaseAuthenticationRepository {
  final BaseAuthenticationRemoteDataSource baseAuthenticationRemoteDataSource;

  AuthenticationRepository(this.baseAuthenticationRemoteDataSource);

  @override
  Future<Either<Failure, void>> forgetPassword(String email) async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.forgetPassword(
      email,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> getMe() async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.getMe(
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.logOut(
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> loginUser(LoginParameters parameters) async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.loginUser(
      parameters,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> loginWithMobile(LoginWithPhone parameters) async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.loginWithMobile(
      parameters,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> registerUser(RegisterParameters parameters) async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.registerUser(
      parameters,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> resetPassword(PasswordParameters parameters)async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.resetPassword(
      parameters,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> updatePassword(PasswordParameters parameters) async {
    
    try {
      final result = await baseAuthenticationRemoteDataSource.updatePassword(
      parameters,
    );
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
         failure.errorMessageModel.message,
        ),
      );
    }
  }
 
}
