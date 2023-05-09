import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_text.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';

import '../../../core/utils/app_images.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var userNameController = TextEditingController();
  var passwordConfirmController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.logo,
                      height: 40.h,
                      width: 100.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text: AppString.createNewAccount,
                      color: AppColors.secondaryColorFive,
                      fontWeight: FontWeight.bold,
                      size: 20.sp,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.person,
                      type: TextInputType.text,
                      controller: firstNameController,
                      obscureText: false,
                      labelText: AppString.firstName,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.person,
                      type: TextInputType.text,
                      controller: lastNameController,
                      obscureText: false,
                      labelText: AppString.lastName,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      controller: emailController,
                      obscureText: false,
                      labelText: AppString.email,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.atm,
                      type: TextInputType.text,
                      controller: userNameController,
                      obscureText: false,
                      labelText: AppString.name,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.phone,
                      type: TextInputType.phone,
                      controller: phoneController,
                      obscureText: false,
                      labelText: AppString.phone,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.lock,
                      type: TextInputType.text,
                      controller: passwordController,
                      obscureText: true,
                      labelText: AppString.password,
                      validator: (value) {},
                      suffix: Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.lock,
                      type: TextInputType.text,
                      controller: passwordConfirmController,
                      obscureText: true,
                      labelText: AppString.conformPassword,
                      validator: (value) {},
                      suffix: Icons.remove_red_eye,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                        text: AppString.createNewAccount, onPressed: () {}),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: AppString.haveAccount,
                          color: AppColors.myBlack,
                          size: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomTextButton(
                          text: AppString.signIn,
                          onPressed: () {},
                          color: AppColors.secondaryColorTwo,
                          size: 14.sp,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
