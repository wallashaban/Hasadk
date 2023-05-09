import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/component_in_general.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: SvgPicture.asset('assets/images/logo.svg'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 36.h,
              horizontal: 15.w,
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.newPassword,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  AppString.newPasswordText,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 14.sp, color: AppColors.myGrey2),
                ),
                SizedBox(
                  height: 42.h,
                ),
                defaultTextFormField(
                    controller: passwordController,
                    type: TextInputType.text,
                    borderRadius: BorderRadius.circular(15.r),
                    borderColor: AppColors.myGrey2,
                    label: AppString.password,
                    prefix: Icons.lock,
                    suffix: Icons.remove_red_eye),
                SizedBox(
                  height: 20.h,
                ),
                defaultTextFormField(
                  controller: confirmPasswordController,
                  type: TextInputType.text,
                  borderRadius: BorderRadius.circular(15.r),
                  borderColor: AppColors.myGrey2,
                  label: AppString.conformPassword,
                  prefix: Icons.lock,
                  suffix: Icons.remove_red_eye,
                ),
                SizedBox(
                  height: 36.h,
                ),
                CustomButton(
                  text: AppString.sure,onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
