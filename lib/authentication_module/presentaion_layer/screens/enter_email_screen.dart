import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/component_in_general.dart';

class EnterEmailScreen extends StatelessWidget {
  EnterEmailScreen({super.key});
  var emailController = TextEditingController();
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
                  AppString.forgetPass,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  AppString.dontWorry,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 14.sp, color: AppColors.myGrey2),
                ),
                SizedBox(
                  height: 42.h,
                ),
                defaultTextFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  borderRadius: BorderRadius.circular(15.r),
                  borderColor: AppColors.myGrey2,
                  label: AppString.email,
                  prefix: Icons.email_rounded,
                ),
                SizedBox(
                  height: 36.h,
                ),
                CustomButton(text: AppString.send,onPressed: (){},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
