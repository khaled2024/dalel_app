import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key, required this.onBoardingPages});
  final PageController _pageController = PageController();

  final List<OnBoardingModel> onBoardingPages;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        itemCount: onBoardingPages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(onBoardingPages[index].image),
              SizedBox(height: 24),
              customSmoothPageIndicator(pageController: _pageController),
              SizedBox(height: 32),
              Text(
                onBoardingPages[index].title,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                onBoardingPages[index].body,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
