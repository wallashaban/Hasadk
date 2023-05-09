import 'package:dartz/dartz.dart';
import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/error/failure.dart';
import '../entities/authentication.dart';
import '../repository/base_auth_reposutory.dart';



class LogOutUseCase
    implements BaseUseCase<void, NoParameters> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  LogOutUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure,void>> call(NoParameters parameters) async {
    return await baseAuthenticationRepository.logOut();
  }
}
