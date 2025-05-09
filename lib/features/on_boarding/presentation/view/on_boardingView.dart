import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_sizeConfig.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/OnBoardingWidgetBody.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/customNavBarWidget.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/getOnboardingBtnsWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.offWhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 40),
                CustomNavBarWidget(
                  onTap: () {
                    customPushReplacementNavigation(
                      context,
                      AppRouterConstants.signUpScreen,
                    );
                  },
                ),
                OnBoardingWidgetBody(
                  onBoardingPages: onBoardingPages,
                  pageController: _pageController,
                  onchanged: (value) {
                    currentIndex = value;
                    print("current index is $currentIndex");
                    setState(() {});
                  },
                ),
                SizedBox(height: SizeConfig.screenH / 12),
                getBottomBtns(
                  currentIndex: currentIndex,
                  pageController: _pageController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
