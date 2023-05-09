import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class GetMeUseCase
    implements BaseUseCase<Authentication, NoParameters> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  GetMeUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,Authentication>> call(NoParameters parameters) async {
    return await baseAuthenticationRepository.getMe();
  }
}
