import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_sizeConfig.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:dalel_app/features/on_boarding/presentation/view/on_boarding_controller.dart';
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
  // controller
  late OnBoardingController _controller;

  /// init
  @override
  void initState() {
    super.initState();
    _controller = OnBoardingController(refresh);
  }

  void refresh() {
    if (mounted) setState(() {});
  }

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
                    _controller.saveOnboardingCashData();
                    customPushReplacementNavigation(
                      context,
                      AppRouterConstants.signUpScreen,
                    );
                  },
                ),
                OnBoardingWidgetBody(
                  onBoardingPages: onBoardingPages,
                  pageController: _controller.pageController,
                  onchanged: _controller.onChange,
                ),
                SizedBox(height: SizeConfig.screenH / 12),
                getBottomBtns(
                  currentIndex: _controller.currentIndex,
                  pageController: _controller.pageController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
