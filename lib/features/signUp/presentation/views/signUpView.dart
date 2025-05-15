// ignore_for_file: deprecated_member_use

import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/signUp/presentation/widgets/AlreadyHaveAccount.dart';
import 'package:dalel_app/features/signUp/presentation/widgets/CustomTextField.dart';
import 'package:dalel_app/features/signUp/presentation/widgets/TermsAndConditions.dart';
import 'package:dalel_app/features/signUp/presentation/widgets/WelcomeText.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(child: WelcomeText(txt: "Welcome !")),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(child: CustomTextField(text: 'First Name')),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(child: CustomTextField(text: 'Last Name')),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(child: CustomTextField(text: 'Email Address')),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
              child: CustomTextField(text: 'Password', isSecure: true),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: TermsAndConditions()),
            SliverToBoxAdapter(child: SizedBox(height: 88)),
            SliverToBoxAdapter(
              child: CustomBtn(
                onPressed: () {},
                color: AppColors.primaryColor,
                title: "Sign Up",
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: AlreadyHaveAnAccount(
                text1: "Already have an account ? ",
                text2: 'Sign In',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
