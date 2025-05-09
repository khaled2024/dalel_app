import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  static final pacifico400Style64 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
  );
  static final poppins500Style24 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static final poppins400Style16 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}
