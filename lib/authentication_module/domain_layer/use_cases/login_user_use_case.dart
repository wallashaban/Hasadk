import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class LoginUserUseCase
    implements BaseUseCase<Authentication, LoginParameters> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  LoginUserUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,Authentication>> call(LoginParameters parameters) async {
    return await baseAuthenticationRepository.loginUser(parameters);
  }
}
