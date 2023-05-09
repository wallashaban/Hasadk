import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_color.dart';


class CustomDivider extends StatelessWidget {
  final double height;
  final double thickness;
  final Color? color;
  const CustomDivider({
    super.key,
    this.height = 15,
    this.thickness = 3,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:color?? AppColors.secondaryColorTwo,
      height: height.h,
      thickness: thickness,
      indent: 5,
      endIndent: 5,
    );
  }
}
