import 'package:dalel_app/core/utils/app_assets.dart';

class OnBoardingModel {
  String image;
  String title;
  String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

final List<OnBoardingModel> onBoardingPages = [
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
