import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/const.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Core/Widgets/custom_button.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.kPrimary,
              Palette.yellowFit,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Texts.bold(
                "Hi Afsar, Welcome",
                color: Palette.white,
                fontSize: 17.sp,
              ),
              Texts.regular(
                "to arabee vocabulary",
                color: Palette.white,
                fontSize: 16.sp,
              ),
              Image.asset(
                "${assetsImages}welcome.png",
                width: 80.w,
              ).symmetric(vertical: 5.h),
              CustomButton(
                text: "Get Started",
                backgroundColor: Palette.white,
                onPressed: () {
                  context.go("/main");
                },
              ).symmetric(horizontal: 10.w),
            ],
          ),
        ),
      ),
    );
  }
}
