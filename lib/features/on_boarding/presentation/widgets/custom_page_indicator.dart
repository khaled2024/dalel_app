import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class customSmoothPageIndicator extends StatelessWidget {
  const customSmoothPageIndicator({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotColor: Colors.grey[400]!,
        dotHeight: 8,
        dotWidth: 8,
        spacing: 5,
      ),
    );
  }
}
