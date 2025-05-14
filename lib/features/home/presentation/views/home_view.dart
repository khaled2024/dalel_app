import 'package:dalel_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("home", style: AppTextStyle.pacifico400Style64)),
    );
  }
}
