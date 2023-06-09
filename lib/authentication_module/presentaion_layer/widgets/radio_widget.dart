import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_color.dart';
import 'custom_text.dart';

class RadioWidget extends StatelessWidget {
  final dynamic onChanged;
  final String text;
  final String value;
  final String? groupValue;
  const RadioWidget({super.key,required this.text,required this.value,required this.onChanged,required this.groupValue,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            activeColor: AppColors.myBlack,
            value:value,
            groupValue: groupValue,
            onChanged: onChanged),
        CustomText(
          text: text,
          size: 14.sp,
          color: AppColors.myBlack,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
