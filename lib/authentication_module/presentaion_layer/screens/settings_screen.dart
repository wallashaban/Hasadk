import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hasadk/core/custom_user_photo.dart';
import 'package:hasadk/core/utils/app_color.dart';
import 'package:hasadk/core/utils/app_string.dart';
import 'package:hasadk/authentication_module/presentaion_layer/widgets/settings_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
            child: Column(
              children: [
                const CustomUserPhoto(),
                SizedBox(
                  height: 20.h,
                ),
                SettingsWidget(
                  onPressed: () {},
                  text: AppString.personInformation,
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SettingsWidget(
                  onPressed: () {},
                  text: AppString.about,
                  icon: Icons.aod,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SettingsWidget(
                  onPressed: () {},
                  text: AppString.help,
                  icon: Icons.help,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SettingsWidget(
                  onPressed: () {},
                  text: AppString.settings,
                  icon: Icons.settings,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SettingsWidget(
                  onPressed: () {},
                  text: AppString.signOut,
                  icon: Icons.logout,
                  isLogOut: true,
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
