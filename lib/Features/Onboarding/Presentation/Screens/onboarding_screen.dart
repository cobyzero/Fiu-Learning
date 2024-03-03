import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/const.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Features/Onboarding/Presentation/Widgets/custom_button.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "${assetsImages}logo.png",
                width: 40.w,
              ),
              Image.asset(
                "${assetsImages}onboarding.png",
                width: 80.w,
              ),
              Texts.regular(
                "Speak with confidence",
                fontSize: 16.sp,
                color: Palette.textBold,
              ).only(bottom: 2.h),
              Texts.regular(
                "Get Talking from Lesson one, with conversation-based learning.",
                fontSize: 12.sp,
                width: 70.w,
                height: 1.2,
                alignment: TextAlign.center,
              ),
              CustomButton(
                text: "Sign Up",
                onPressed: () {
                  context.go("/register");
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Texts.regular(
                    "Already have an account?",
                    color: Palette.gray,
                    fontSize: 13.sp,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Texts.regular(
                      "SIGN IN",
                      color: Palette.kPrimary,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              )
            ],
          ).symmetric(horizontal: 10.w, vertical: 5.h),
        ),
      ),
    );
  }
}
