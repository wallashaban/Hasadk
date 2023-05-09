import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/custom_button.dart';

import '../../../core/utils/component_in_general.dart';
import '../widgets/custom_text_form_field.dart';

class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({super.key});
  var passwordController = TextEditingController();
  var oldPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
            AppString.passwordUpdate,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 40.h,
            horizontal: 15.w,
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                prefix: Icons.lock,
                type: TextInputType.text,
                controller: oldPasswordController,
                obscureText: true,
                labelText: AppString.oldPassword,
                validator: (value) {},
                suffix: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                prefix: Icons.lock,
                type: TextInputType.text,
                controller: passwordController,
                obscureText: true,
                labelText: AppString.password,
                validator: (value) {},
                suffix: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                prefix: Icons.lock,
                type: TextInputType.text,
                controller: confirmPasswordController,
                obscureText: true,
                labelText: AppString.conformPassword,
                validator: (value) {},
                suffix: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 15.h,
              ),const Spacer(),
              CustomButton(
                text: AppString.save,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
