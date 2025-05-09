import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text("Skip", style: AppTextStyle.poppins400Style16),
    );
  }
}
