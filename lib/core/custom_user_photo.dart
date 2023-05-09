import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/core/utils/app_color.dart';

class CustomUserPhoto extends StatelessWidget {
  const CustomUserPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CircleAvatar(
                radius: 80.r,
                backgroundColor: AppColors.primaryColor,
                child: CircleAvatar(
                  radius: 75.r,
                  backgroundColor: AppColors.myWhite,
                  backgroundImage: const AssetImage('assets/images/user.png'),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: AppColors.secondaryColorTwo,
                        child: Icon(
                          Icons.camera_alt,
                          color: AppColors.myWhite,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'ali atwan',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
