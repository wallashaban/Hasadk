part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class GenderState extends AuthenticationState{}
class AuthDone extends AuthenticationState{}

// login states
class AuthenticationInitial extends AuthenticationState {}

class LoginUserLoadingState extends AuthenticationState {}

class LoginUserSuccessState extends AuthenticationState {}

class LoginUserErrorState extends AuthenticationState {
 final String error;
 const LoginUserErrorState({
    required this.error,
  });
}


class ChangePasswordState extends AuthenticationState{}


class ResetPasswordLoadingState extends AuthenticationState {}

class ResetPasswordSuccessState extends AuthenticationState {}

class ResetPasswordErrorState extends AuthenticationState {
 final String error;
 const ResetPasswordErrorState({
    required this.error,
  });
}

//register states

class RegisterUserLoadingState extends AuthenticationState {}

class RegisterUserSuccessState extends AuthenticationState {}

class RegisterUserErrorState extends AuthenticationState {
 final String error;
 const RegisterUserErrorState({
    required this.error,
  });
}

// login with Mobile states

class LoginWithMobileLoadingState extends AuthenticationState {}

class LoginWithMobileSuccessState extends AuthenticationState {}

class LoginWithMobileErrorState extends AuthenticationState {
 final String error;
 const LoginWithMobileErrorState({
    required this.error,
  });
}

// get states

class GetMeLoadingState extends AuthenticationState {}

class GetMeSuccessState extends AuthenticationState {}

class GetMeErrorState extends AuthenticationState {
 final String error;
 const GetMeErrorState({
    required this.error,
  });
}

// forgget password states

class ForgetPasswordLoadingState extends AuthenticationState {}

class ForgetPasswordSuccessState extends AuthenticationState {}

class ForgetPasswordErrorState extends AuthenticationState {
 final String error;
 const ForgetPasswordErrorState({
    required this.error,
  });
}

// update password states

class UpdatePasswordLoadingState extends AuthenticationState {}

class UpdatePasswordSuccessState extends AuthenticationState {}

class UpdatePasswordErrorState extends AuthenticationState {
 final String error;
 const UpdatePasswordErrorState({
    required this.error,
  });
}

class LogOutLoadingState extends AuthenticationState {}

class LogOutSuccessState extends AuthenticationState {}

class LogOutErrorState extends AuthenticationState {
 final String error;
 const LogOutErrorState({
    required this.error,
  });
}
class ChangeLoginState extends AuthenticationState{}
