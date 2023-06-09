// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData? suffix;
  final IconData? prefix;
  final controller;
  final bool obscureText;
  final String? hintText;
  dynamic validator;
  dynamic onTap;
  dynamic sufixPressed;
  dynamic prefixPressed;
  final double width;
  final TextInputType type;

  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.obscureText,
    this.sufixPressed,
    this.hintText,
    required this.labelText,
    this.suffix,
    required this.validator,
    required this.type,
    this.onTap,
    this.width = double.infinity,
    this.prefixPressed,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        onTap: onTap,

        obscureText: obscureText,
        style: const TextStyle(
            // fontWeight: FontWeight.bold, color: AppColors.textFielfColor,
            ), //todo if you have nothing to do then delete it😁
        autocorrect: true,
        validator: validator,
        decoration: InputDecoration(
          
          hintText: hintText,
          labelText: labelText,
          prefixIcon: IconButton(
            onPressed: prefixPressed,
            icon: Icon(prefix),
          ),
          suffixIcon: IconButton(
            onPressed: sufixPressed,
            icon: Icon(suffix),
          ),
        ),
      ),
    );
  }
}
