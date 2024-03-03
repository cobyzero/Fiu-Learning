import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Core/Widgets/custom_input.dart';
import 'package:fuilearning/Features/Auth/Presentation/Widgets/custom_social_button.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Texts.bold(
                "Create your account",
                fontSize: 18.sp,
              ),
              const CustomSocialButton(
                type: SocialButton.facebook,
              ).only(bottom: 2.h),
              const CustomSocialButton(
                type: SocialButton.google,
              ),
              Texts.regular(
                "Or log in with email",
                fontSize: 14.sp,
              ),
              CustomInput(),
            ],
          ).symmetric(horizontal: 10.w, vertical: 6.h),
        ),
      ),
    );
  }
}
