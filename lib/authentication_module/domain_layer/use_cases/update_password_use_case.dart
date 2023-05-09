import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class UpdatePasswordUseCase
    implements BaseUseCase<Authentication, PasswordParameters> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  UpdatePasswordUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,Authentication>> call(PasswordParameters parameters) async {
    return await baseAuthenticationRepository.updatePassword(parameters);
  }
}
