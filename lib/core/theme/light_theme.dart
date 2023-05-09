import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: AppColors.myWhite,
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor: Colors.grey,
    prefixIconColor: Colors.grey,
    fillColor: Colors.grey[100],
    filled: true,
    // fillColor: Colors.green,
    //focusColor: Colors.green,
    labelStyle: TextStyle(
      color: AppColors.myLightGrey, //todo change color
      fontWeight: FontWeight.bold,
      fontSize: 16.sp,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
    ), //todo change color
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(color: AppColors.myRed, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(color: AppColors.myGrey2, width: 1),
    ), //todo change color
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(color: Colors.grey[300]!, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(color: AppColors.myRed, width: 1),
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: false,
    elevation: 0,
    backgroundColor: AppColors.myWhite,
    titleTextStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.secondaryColorTwo,
    ),
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
      size: 15,
    ),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.myWhite,
    ),
    bodyMedium: TextStyle(
      fontSize: 20,
      color: AppColors.myOffWhite,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryColor,
        overflow: TextOverflow.ellipsis),
    displayMedium: TextStyle(
      fontSize: 14,
      color: AppColors.myLightGrey,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(
      color: AppColors.primaryColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: .8.h,
    ),
    displayLarge: TextStyle(
      fontSize: 6,
      color: AppColors.myWhite,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      fontSize: 8,
      color: AppColors.primaryColor,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: AppColors.secondaryColorTwo,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 24,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      color: AppColors.myBlack,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    headlineSmall: TextStyle(
        fontSize: 16,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
      fontSize: 28,
      color: AppColors.secondaryColorTwo,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 14,
      color: AppColors.myBlack,
      fontWeight: FontWeight.w500,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all<Color>(AppColors.secondaryColorTwo),
        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
          fontSize: 14,
          color: AppColors.secondaryColorOne,
          fontWeight: FontWeight.bold,
        ))),
  ),
  iconTheme: IconThemeData(
    color: AppColors.myOffWhite,
    size: 30.r,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.myWhite,
    //   elevation: 5,
    selectedIconTheme: IconThemeData(
      size: 14.r,
    ),
    //   unselectedIconTheme: IconThemeData(
    //     color: AppColors.colorIconButtonNavBar,
    //     size: 20,
    //   ),
    selectedItemColor: AppColors.primaryColor,
    selectedLabelStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.myRed,
    ),
    unselectedItemColor: Color(0xffCCCCCC),
    unselectedLabelStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xffCCCCCC),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.resolveWith(
          (states) => EdgeInsets.symmetric(horizontal: 35.w, vertical: 14.r)),
      shape: MaterialStateProperty.resolveWith((_) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.r,
          ),
        );
      }),
      elevation: MaterialStateProperty.resolveWith((states) => 10),
      animationDuration: const Duration(milliseconds: 2000),
      overlayColor: MaterialStateProperty.resolveWith(
          (states) => AppColors.secondaryColorOne),
      /* textStyle: MaterialStateProperty.resolveWith(
                  (states) => Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ), */
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return AppColors.myWhite;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColors.secondaryColorOne;
        }
        return AppColors.secondaryColorOne;
      }),
    ),
  ),
);
