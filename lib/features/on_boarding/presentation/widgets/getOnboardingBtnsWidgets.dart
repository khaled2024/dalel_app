import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:flutter/material.dart';

class getBottomBtns extends StatelessWidget {
  const getBottomBtns({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  final int currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    if (currentIndex != onBoardingPages.length - 1) {
      return CustomBtn(
        onPressed: () {
          pageController.nextPage(
            duration: Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
        color: AppColors.primaryColor,
        title: "Next",
      );
    } else {
      return Column(
        spacing: 16,
        children: [
          CustomBtn(
            onPressed: () {
              customPushReplacementNavigation(
                context,
                AppRouterConstants.signUpScreen,
              );
            },
            color: AppColors.primaryColor,
            title: "Create Account",
          ),
          GestureDetector(
            onTap: () {
              customPushReplacementNavigation(
                context,
                AppRouterConstants.loginScreen,
              );
            },
            child: Text(
              "Login Now",
              style: AppTextStyle.poppins400Style16.copyWith(
                color: AppColors.deepGrey,
              ),
            ),
          ),
        ],
      );
    }
  }
}
