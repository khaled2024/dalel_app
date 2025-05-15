import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.isSecure = false, required this.text});
  final String text;
  final bool isSecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        cursorColor: AppColors.primaryColor,
        style: AppTextStyle.poppins400Style16.copyWith(fontSize: 14),
        obscureText: isSecure,
        decoration: InputDecoration(
          labelStyle: AppTextStyle.poppins500Style17.copyWith(
            color: AppColors.grey2,
          ),
          labelText: text,
          enabledBorder: getBorderStyle(),
          border: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey2),
  );
}
