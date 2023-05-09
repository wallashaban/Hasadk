import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:hasadk/authentication_module/domain_layer/use_cases/get_me_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/log_out_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/login_with_mobile_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/register_user_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/reset_password_use_case.dart';
import 'package:hasadk/core/base_use_case/base_use_case.dart';

import '../../../core/error/failure.dart';
import '../../data_layer/models/authentication_model.dart';
import '../../domain_layer/entities/authentication.dart';
import '../../domain_layer/use_cases/forget_password_use_case.dart';
import '../../domain_layer/use_cases/login_user_use_case.dart';
import '../../domain_layer/use_cases/update_password_use_case.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final LoginUserUseCase loginUserUseCase;
  final RegisterUseCase registerUserUseCase;
  final LoginWithMobileUseCase loginWithMobileUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final ForgetPasswordUseCase forgetPasswordUseCase;
  final UpdatePasswordUseCase updatePasswordUseCase;
  final LogOutUseCase logOutUseCase;
  final GetMeUseCase getMeUseCase;
  AuthenticationCubit(
    this.loginUserUseCase,
    this.registerUserUseCase,
    this.loginWithMobileUseCase,
    this.resetPasswordUseCase,
    this.forgetPasswordUseCase,
    this.updatePasswordUseCase,
    this.logOutUseCase,
    this.getMeUseCase,
  ) : super(AuthenticationInitial());

  Authentication user = const AuthenticationModel(
    id: 1,
    createdAt: '',
    email: '',
    favouriteCompany: [],
    favouriteProduct: [],
    firstName: '',
    lastName: '',
    likes: [],
    passwordResetExpires: '',
    passwordResetTokenOTP: '',
    role: '',
    telephone: '',
    token: '',
    updatedAt: '',
    userName: '',
    v: 0,
  );
  Failure serverFailure = const ServerFailure(
    'message',
  );
  // var open = Hive.openBox('userData');
  // var userData = Hive.box('userData');
  // String? gender;
  // chooseGender(String gender) {
  //   this.gender = gender;
  //   emit(GenderState());
  //   emit(AuthDone());
  // }

  // void getToken() async {
  //   await FirebaseMessaging.instance.getToken().then((tok) {
  //     AppStrings.token = tok.toString();
  //     debugPrint('token ${AppStrings.token}');
  //   });
  // }

  bool isEmail = true;
  changeLoginState(bool isEmail) {
   this. isEmail = isEmail;
    emit(ChangeLoginState());
    emit(AuthDone());
  }

  Future registerUser(RegisterParameters parameters) async {
    emit(
      RegisterUserLoadingState(),
    );
    final result = await registerUserUseCase(parameters);
    result.fold(
      (l) {
        serverFailure = l;
        emit(
          RegisterUserErrorState(
            error: l.message,
          ),
        );
      },
      (r) async {
        user = r;
        //hive.put('userData', r);
        /*   DioHelper.postData(
          key: 'token',
          value: r.token,
        ); */
        emit(RegisterUserSuccessState());
        /*   userData.put(
            'user',
            UserDataCach(
              id: r.id,
              name: r.name,
              email: r.email,
              accessToken: r.accessToken!,
              birthDate: r.birthDate,
              gender: r.gender,
              photo: null, //todo refactor the photo
            ));
        emit(AuthDone()); */
      },
    );
  }

  Future loginUser(LoginParameters parameters) async {
    emit(
      LoginUserLoadingState(),
    );
    final result = await loginUserUseCase(parameters);
    result.fold(
      (l) async {
        serverFailure = l;
        emit(
          LoginUserErrorState(
            error: l.message,
          ),
        );
        // await Future.delayed(Duration(seconds: 2)).then((value) =>         emit(AuthDone()));
      },
      (r) async {
        user = r;

        /*   CashHelper.saveData(
          key: 'token',
          value: r.accessToken,
        );
        debugPrint('token func ${r.accessToken}');
        emit(LoginUserSuccessState());
        userData.put(
            'user',
            UserDataCach(
              id: r.id,
              name: r.name,
              email: r.email,
              accessToken: r.accessToken!,
              birthDate: r.birthDate,
              gender: r.gender,
              photo: null, //todo refactor the photo
            )); */
      },
    );
  }

  Future loginWithMobile(LoginWithPhone parameters) async {
    emit(
      LoginWithMobileLoadingState(),
    );
    final result = await loginWithMobileUseCase(parameters);
    result.fold(
      (l) {
        serverFailure = l;
        emit(
          LoginWithMobileErrorState(
            error: l.message,
          ),
        );
      },
      (r) {
        user = r;
        emit(LoginWithMobileSuccessState());
      },
    );
  }

  Future resetPassword(PasswordParameters parameters) async {
    emit(
      ResetPasswordLoadingState(),
    );
    final result = await resetPasswordUseCase(parameters);
    result.fold(
      (l) {
        serverFailure = l;
        emit(
          ResetPasswordErrorState(
            error: l.message,
          ),
        );
      },
      (r) {
        user = r;
        emit(ResetPasswordSuccessState());
      },
    );
  }

  Future forgetPassword(String email) async {
    emit(
      ForgetPasswordLoadingState(),
    );
    final result = await forgetPasswordUseCase(email);
    result.fold(
      (l) {
        serverFailure = l;
        debugPrint('erroor email ${l.message}');
        emit(
          ForgetPasswordErrorState(
            error: l.message,
          ),
        );
      },
      (r) {
        emit(ForgetPasswordSuccessState());
      },
    );
  }

  Future updatePassword(PasswordParameters parameters) async {
    emit(
      UpdatePasswordLoadingState(),
    );
    final result = await updatePasswordUseCase(parameters);
    result.fold(
      (l) async {
        serverFailure = l;
        emit(
          UpdatePasswordErrorState(
            error: l.message,
          ),
        );
      },
      (r) {
        user = r;
        emit(UpdatePasswordSuccessState());
      },
    );
  }

  Future getMe() async {
    emit(GetMeLoadingState());
    final result = await getMeUseCase(const NoParameters());
    result.fold(
      (l) async {
        serverFailure = l;
        emit(
          GetMeErrorState(
            error: l.message,
          ),
        );
      },
      (r) {
        user = r;
        emit(GetMeSuccessState());
      },
    );
  }

  bool isPassword = true;
  obscurePassword() {
    isPassword = !isPassword;
    emit(ChangePasswordState());
    emit(AuthDone());
  }
}
