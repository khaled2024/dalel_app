import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/routes/app_router_constants.dart';
import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    deleyedNavigation(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dalel', style: AppTextStyle.pacifico400Style64),
      ),
    );
  }
}

void deleyedNavigation(BuildContext context) {
  Future.delayed(Duration(seconds: 2), () {
    customNavigation(context, AppRouterConstants.onBoardingScreen);
  });
}
