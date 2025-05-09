import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boardingModel.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({
    super.key,
    required this.onBoardingPages,
    required this.pageController,
    this.onchanged,
  });
  final PageController pageController;
  final List<OnBoardingModel> onBoardingPages;
  final void Function(int)? onchanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onchanged,
        physics: BouncingScrollPhysics(),
        controller: pageController,
        itemCount: onBoardingPages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingPages[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 24),
              customSmoothPageIndicator(pageController: pageController),
              SizedBox(height: 32),
              Text(
                onBoardingPages[index].title,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                onBoardingPages[index].body,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
