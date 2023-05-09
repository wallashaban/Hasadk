import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/app_images.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                size: 20.r,
              )),
          title: Text(
            AppString.aboutApp,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(
                  AppImages.logo,
                  height: 60.h,
                  width: 100.w,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: AppString.aboutCompany,
                color: AppColors.myBlack,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: AppString.app,
                  style: TextStyle(
                    color: AppColors.myBlack,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: AppString.hasdek,
                  style: TextStyle(
                    color: AppColors.secondaryColorTwo,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: AppString.descriptionAboutApp,
                  style: TextStyle(
                    color: AppColors.myBlack,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]))
              /*        Row(
                children: [
                  CustomText(
                    text: AppString.app,
                    color: AppColors.myBlack,
                  ),
                  CustomText(
                    text: AppString.hasdek,
                    color: AppColors.secondaryColorThree,
                  ),
                  Expanded(
                    child: CustomText(
                      text: AppString.descriptionAboutApp,
                      color: AppColors.myBlack,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
        */
            ],
          ),
        ),
      ),
    );
  }
}
