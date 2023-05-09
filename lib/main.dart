import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/authentication_module/presentaion_layer/controllers/authentication_cubit.dart';
import 'package:hasadk/authentication_module/presentaion_layer/screens/login_screen.dart';
import 'package:hasadk/authentication_module/presentaion_layer/screens/splash_screen.dart';
import 'package:hasadk/core/services/services_locator.dart';
import 'package:hasadk/core/theme/light_theme.dart';

import 'authentication_module/presentaion_layer/screens/about_screen.dart';
import 'authentication_module/presentaion_layer/screens/sign_up_screen.dart';
import 'authentication_module/presentaion_layer/screens/update_password_screen.dart';
import 'core/utils/bloc_observe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.initFlutter('caching_db');
  Hive.registerAdapter(UserDataCachAdapter());
  Hive.openBox('userData'); */
  ServicesLocator().init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<AuthenticationCubit>(),
          )
        ],
        child: MaterialApp(
          title: 'Hasadk',
          theme: lightTheme,
          home:const SplashScreen(),
        ),
      ),
    );
  }
}
