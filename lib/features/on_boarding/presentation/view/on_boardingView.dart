import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/OnBoardingWidgetBody.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/customNavBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      image: Assets.imagesOnboarding1,
      title: "Explore The history with Dalel in a smart way",
      body:
          "Using our app’s history libraries you can find many historical periods ",
    ),
    OnBoardingModel(
      image: Assets.imagesOnboarding2,
      title: "From every place on earth",
      body: "A big variety of ancient places from all over the world",
    ),
    OnBoardingModel(
      image: Assets.imagesOnboarding3,
      title: "Using modern AI technology for better user experience",
      body:
          "AI provide recommendations and helps you to continue the search journey",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.offWhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                CustomNavBarWidget(),
                OnBoardingWidgetBody(onBoardingPages: onBoardingPages),
                CustomBtn(
                  onPressed: () {},
                  color: AppColors.primaryColor,
                  title: "Next",
                ),
                SizedBox(height: 17),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
