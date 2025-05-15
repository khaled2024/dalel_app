import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Text(txt, style: AppTextStyle.poppins600Style28),
    );
  }
}
