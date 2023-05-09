import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class LoginWithMobileUseCase
    implements BaseUseCase<Authentication, LoginWithPhone> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  LoginWithMobileUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,Authentication>> call(LoginWithPhone parameters) async {
    return await baseAuthenticationRepository.loginWithMobile(parameters);
  }
}
