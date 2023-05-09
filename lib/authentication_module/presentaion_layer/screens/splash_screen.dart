

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_images.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 150.w,
      nextScreen: //CashHelper.getData(key: 'token') != null
          //? const BottomNavBarScreen()
           LoginScreen(),
      splash: SvgPicture.asset(
        AppImages.logo,
         width: 150.w,
        height: 203.h,
      ),
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      //backgroundColor: AppColors.splashColor,
    );
  }
}
