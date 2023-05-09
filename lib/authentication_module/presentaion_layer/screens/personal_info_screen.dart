import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/core/custom_user_photo.dart';
import 'package:hasadk/core/personal_info_widget.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/component_in_general.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({super.key});
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var firstNameController = TextEditingController();
  var secondNameController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {},
          ),
          title: Text(
            AppString.personalInfo,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20.sp,
                ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 25.r,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const CustomUserPhoto(),
                  PersonalInfoWidget(
                    controller: firstNameController,
                    text: AppString.firstName,
                  ),
                  PersonalInfoWidget(
                    controller: secondNameController,
                    text: AppString.lastName,
                  ),
                  PersonalInfoWidget(
                    controller: nameController,
                    text: AppString.name,
                  ),
                  PersonalInfoWidget(
                    controller: phoneController,
                    text: AppString.phone,
                  ),
                  PersonalInfoWidget(
                    controller: emailController,
                    text: AppString.email,
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                   CustomButton(text: AppString.edit,onPressed: (){},)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
