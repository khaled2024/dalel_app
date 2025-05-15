import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:dalel_app/features/signUp/presentation/widgets/CustomCheckBox.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "I have agree to our ",
                style: AppTextStyle.poppins500Style17.copyWith(fontSize: 14),
              ),
              TextSpan(
                text: "Terms and Condition",
                style: AppTextStyle.poppins500Style17.copyWith(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
