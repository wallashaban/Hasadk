import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class ForgetPasswordUseCase
    implements BaseUseCase<void, String> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  ForgetPasswordUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,void>> call(String email) async {
    return await baseAuthenticationRepository.forgetPassword(email);
  }
}
