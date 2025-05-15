import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatefulWidget {
  const AlreadyHaveAnAccount({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  State<AlreadyHaveAnAccount> createState() => _AlreadyHaveAnAccountState();
}

class _AlreadyHaveAnAccountState extends State<AlreadyHaveAnAccount> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: widget.text1,
              style: AppTextStyle.poppins500Style17.copyWith(
                fontSize: 14,
                color: AppColors.deepGrey,
              ),
            ),
            TextSpan(
              text: widget.text2,
              style: AppTextStyle.poppins500Style17.copyWith(
                fontSize: 14,
                color: AppColors.grey2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
