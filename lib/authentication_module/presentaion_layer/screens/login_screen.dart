import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_divider.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_text.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_text_button.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_text_form_field.dart';
import 'package:hasadk/core/base_use_case/base_use_case.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/app_images.dart';
import '../controllers/authentication_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.r, horizontal: 20.w),
              child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
                builder: (context, state) {
                  var cubit = BlocProvider.of<AuthenticationCubit>(context);

                  return Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AppImages.logo,
                          height: 90.h,
                          width: 100.w,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: AppString.loginDes,
                              color: AppColors.myBlack,
                            ),
                            CustomText(
                              text: AppString.hasdek,
                              color: AppColors.secondaryColorTwo,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: AppString.login,
                          color: AppColors.secondaryColorFive,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                cubit.changeLoginState(true);
                              },
                              child: Column(
                                children: [
                                  CustomText(
                                    text: AppString.email,
                                    color: cubit.isEmail
                                        ? AppColors.myBlack
                                        : AppColors.myLightGrey,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: CustomDivider(
                                      color: !cubit.isEmail
                                          ? AppColors.myLightGrey
                                          : AppColors.secondaryColorFive,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                cubit.changeLoginState(false);
                              },
                              child: Column(
                                children: [
                                  CustomText(
                                    text: AppString.phone,
                                    color: AppColors.myBlack,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: CustomDivider(
                                      color: cubit.isEmail
                                          ? AppColors.myLightGrey
                                          : AppColors.secondaryColorFive,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        cubit.isEmail
                            ? CustomTextFormField(
                                prefix: Icons.email,
                                type: TextInputType.emailAddress,
                                controller: emailController,
                                obscureText: false,
                                labelText: AppString.email,
                                validator: (value) {},
                              )
                            : CustomTextFormField(
                                prefix: Icons.phone,
                                type: TextInputType.phone,
                                controller: phoneController,
                                obscureText: false,
                                labelText: AppString.phone,
                                validator: (value) {},
                              ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextFormField(
                          prefix: Icons.lock,
                          type: TextInputType.text,
                          controller: passwordController,
                          obscureText: false,
                          labelText: AppString.password,
                          validator: (value) {},
                          suffix: Icons.remove_red_eye,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: CustomTextButton(
                            text: AppString.forgotPassword,
                            onPressed: () {},
                            color: AppColors.secondaryColorTwo,
                            size: 12.sp,
                            textAlign: TextAlign.end,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30.sp,
                        ),
                        CustomButton(
                          text: AppString.signIn,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              cubit.isEmail
                                  ? cubit.loginUser(
                                      LoginParameters(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim(),
                                      ),
                                    )
                                  : cubit.loginWithMobile(
                                      LoginWithPhone(
                                        telephone: phoneController.text.trim(),
                                        password:
                                            passwordController.text.trim(),
                                      ),
                                    );
                            }
                          },
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: AppString.notHaveAccount,
                              color: AppColors.myBlack,
                              size: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomTextButton(
                              text: AppString.addAccount,
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
                  );
                },
              ),
            ),
          ),
        )),
      ),
    );
  }
}
