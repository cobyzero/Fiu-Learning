import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Core/Widgets/custom_input.dart';
import 'package:fuilearning/Core/Widgets/custom_social_button.dart';
import 'package:fuilearning/Core/Widgets/custom_button.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    context.go("/onboarding");
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15.sp,
                  ),
                ),
              ).only(left: 4.w, top: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Texts.bold(
                        "Enter your account",
                        fontSize: 16.sp,
                      ).only(bottom: 4.h),
                      const CustomSocialButton(
                        type: SocialButton.facebook,
                      ).only(bottom: 2.h),
                      const CustomSocialButton(
                        type: SocialButton.google,
                      ).only(bottom: 4.h),
                      Texts.regular(
                        "Or log in with email",
                        fontSize: 14.sp,
                      ).only(bottom: 4.h),
                      CustomInput(
                        controller: TextEditingController(),
                        hintText: "Correo Electronico",
                      ).only(bottom: 2.h),
                      CustomInput(
                        controller: TextEditingController(),
                        hintText: "Contraseña",
                        isPassword: true,
                      ).only(bottom: 3.h),
                    ],
                  ),
                ).symmetric(horizontal: 10.w),
              ),
              CustomButton(
                text: "Sign in",
                onPressed: () {
                  context.go("/welcome");
                },
              ).symmetric(horizontal: 10.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Texts.regular(
                    "No have an account?",
                    color: Palette.gray,
                    fontSize: 13.sp,
                  ),
                  TextButton(
                    onPressed: () {
                      context.go("/register");
                    },
                    child: Texts.regular(
                      "SIGN UP",
                      color: Palette.kPrimary,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ).only(bottom: 3.h)
            ],
          ),
        ),
      ),
    );
  }
}
