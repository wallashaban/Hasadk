import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';

class SettingsWidget extends StatelessWidget {
  final dynamic onPressed;
  final String text;
  final IconData icon;
  final bool isLogOut;

  const SettingsWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.isLogOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isLogOut
          ? EdgeInsets.symmetric(vertical: 15.r, horizontal: 15.r)
          : EdgeInsets.symmetric(vertical: 5.r, horizontal: 15.r),
      decoration: BoxDecoration(
        //color: AppColors.myLightGrey,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[400]!,
              blurRadius: 10,
              blurStyle: BlurStyle.outer),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isLogOut ? Colors.red : AppColors.myBlack,
            size: 25.r,
          ),
          SizedBox(
            width: 5.h,
          ),
          Text(
            '|',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 14.sp,
                  color: isLogOut ? Colors.red : null,
                ),
          ),
          SizedBox(
            width: 5.h,
          ),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 14.sp, color: isLogOut ? Colors.red : null),
          ),
          const Spacer(),
          if (!isLogOut)
            IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.r,
                  color: AppColors.myBlack,
                ))
        ],
      ),
    );
  }
}
