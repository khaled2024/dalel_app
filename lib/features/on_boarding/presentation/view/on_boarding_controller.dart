import 'package:dalel_app/core/database/cash_helper/CashHelper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_constants.dart';
import 'package:flutter/material.dart';

class OnBoardingController {
  final Function() refresh;
  int currentIndex = 0;

  final PageController pageController = PageController(initialPage: 0);

  OnBoardingController(this.refresh);

  void update() {
    refresh();
  }

  void onChange(int value) {
    currentIndex = value;
    debugPrint("current index is $currentIndex");
    update();
  }

  void saveOnboardingCashData() {
    getIt<CashHelper>().saveData(
      key: AppConstants.onBoardingVisited,
      value: true,
    );
  }
}
