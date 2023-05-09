import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

abstract class BaseUseCaseNotEither<T, Parameters> {
  Future<T> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}

class RegisterParameters {
  final String firstName;
  final String lastName;
  final String userName;
  final String telephone;
  final String password;
  final String passwordConfirm;

  final String email;

  const RegisterParameters({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.telephone,
    required this.password,
    required this.passwordConfirm,
    required this.email,
  });
}

class LoginParameters {
  String email;
  String password;
  LoginParameters({
    required this.email,
    required this.password,
  });
}

class LoginWithPhone {
  String telephone;
  String password;
  LoginWithPhone({
    required this.telephone,
    required this.password,
  });
}

class PasswordParameters {
  String password;
  String passwordConfirm;
  String oldPassword;
  PasswordParameters({
    required this.password,
    required this.passwordConfirm,
    required this.oldPassword,
  });
}
