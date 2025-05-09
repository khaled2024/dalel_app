import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  void Function() onPressed;
  final Color? color;
  final String title;
  CustomBtn({
    super.key,
    required this.onPressed,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyle.poppins500Style24.copyWith(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
