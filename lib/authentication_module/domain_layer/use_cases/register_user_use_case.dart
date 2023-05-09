import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class RegisterUseCase
    implements BaseUseCase<Authentication, RegisterParameters> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  RegisterUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,Authentication>> call(RegisterParameters parameters) async {
    return await baseAuthenticationRepository.registerUser(parameters);
  }
}
