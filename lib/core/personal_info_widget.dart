import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/core/utils/component_in_general.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String text;
  final controller;
  const PersonalInfoWidget({super.key,required this.controller,required this.text,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10.0.w),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 14.sp),
          ),
        ),
        defaultTextFormField(
          controller: controller,
          type: TextInputType.emailAddress,
          borderRadius: BorderRadius.circular(15.r),
          borderColor: AppColors.myGrey2,
          label: AppString.email,
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
