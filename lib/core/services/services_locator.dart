
import 'package:get_it/get_it.dart';
import 'package:hasadk/authentication_module/data_layer/data_sourde/auth_remote_data_source.dart';
import 'package:hasadk/authentication_module/data_layer/repository/auth_repository.dart';
import 'package:hasadk/authentication_module/domain_layer/repository/base_auth_reposutory.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/forget_password_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/get_me_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/log_out_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/login_user_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/login_with_mobile_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/register_user_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/reset_password_use_case.dart';
import 'package:hasadk/authentication_module/domain_layer/use_cases/update_password_use_case.dart';
import 'package:hasadk/authentication_module/presentaion_layer/controllers/authentication_cubit.dart';


final sl=GetIt.instance;
class ServicesLocator
{
  void init()
  {
  //   //////// Cubit
     sl.registerFactory(() => AuthenticationCubit(sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl()));
  //   sl.registerFactory(() => HomeCubit(sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl(),sl()));


  // /////// Use Cases
     sl.registerLazySingleton(() => LoginUserUseCase(sl()));
     sl.registerLazySingleton(() => RegisterUseCase(sl()));
     sl.registerLazySingleton(() => ForgetPasswordUseCase(sl()));
     sl.registerLazySingleton(() => UpdatePasswordUseCase(sl()));
     sl.registerLazySingleton(() => ResetPasswordUseCase(sl()));
     sl.registerLazySingleton(() => LogOutUseCase(sl()));
     sl.registerLazySingleton(() => LoginWithMobileUseCase(sl()));
     sl.registerLazySingleton(() => GetMeUseCase(sl()));
     sl.registerLazySingleton<BaseAuthenticationRemoteDataSource>(() => AuthenticationRemoteDataSource());
     sl.registerLazySingleton<BaseAuthenticationRepository>(() => AuthenticationRepository(sl()));
  //   sl.registerLazySingleton(() => GetMyProfileUseCase(sl()));
  //   sl.registerLazySingleton(() => SignInWithPhoneUseCase(sl()));
  //   sl.registerLazySingleton(() => UpdatePasswordUseCase(sl()));
  //   sl.registerLazySingleton(() => ResetPasswordUseCase(sl()));
  //   sl.registerLazySingleton(() => ForgetPasswordUseCase(sl()));
  //   sl.registerLazySingleton(() => GetAllCategoriesUseCase(sl()));
  //   sl.registerLazySingleton(() => GetCategoryDetailsUseCase(sl()));
  //   sl.registerLazySingleton(() => AddReviewUseCase(sl()));
  //   sl.registerLazySingleton(() => UpdateReviewUseCase(sl()));
  //   sl.registerLazySingleton(() => DeleteAccountUseCase(sl()));
  //   sl.registerLazySingleton(() => GetAllSellersUseCase(sl()));
  //   sl.registerLazySingleton(() => GetSellerInformationUseCase(sl()));
  //   sl.registerLazySingleton(() => GetSellersProductsUseCase(sl()));


  //   ////// Repository
  //   sl.registerLazySingleton<AuthBaseRepository>(() => AuthRepository(sl()));
  //   sl.registerLazySingleton<HomeBaseRepository>(() => HomeRepository(sl()));



  //   //////////// Data Source
  //   sl.registerLazySingleton<AuthBaseRemoteDataSource>(() => AuthRemoteDataSource());
  //   sl.registerLazySingleton<HomeBaseRemoteDataSource>(() => HomeRemoteDataSource());


  }
}