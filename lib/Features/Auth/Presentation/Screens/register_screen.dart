import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Core/Widgets/custom_input.dart';
import 'package:fuilearning/Core/Widgets/custom_social_button.dart';
import 'package:fuilearning/Core/Widgets/custom_button.dart';
import 'package:fuilearning/Features/Auth/Application/Blocs/bloc/register_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
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
                          "Create your account",
                          fontSize: 18.sp,
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
                          hintText: "Nombre",
                        ).only(bottom: 2.h),
                        CustomInput(
                          controller: TextEditingController(),
                          hintText: "Correo Electronico",
                        ).only(bottom: 2.h),
                        CustomInput(
                          controller: TextEditingController(),
                          hintText: "Contraseña",
                          isPassword: true,
                        ).only(bottom: 3.h),
                        Row(
                          children: [
                            BlocBuilder<RegisterBloc, RegisterState>(
                              builder: (context, state) {
                                return Checkbox(
                                  value: state.privacePolicy,
                                  onChanged: (value) {
                                    context.read<RegisterBloc>().add(
                                          RegisterEventAcceptPolicy(),
                                        );
                                  },
                                );
                              },
                            ),
                            Texts.regular(
                              "i have read the",
                              color: Palette.gray,
                              fontSize: 12.sp,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Texts.regular(
                                "Privace Policy",
                                color: Palette.kPrimary,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).symmetric(horizontal: 10.w),
                ),
                CustomButton(
                  text: "Sign Up",
                  onPressed: () {},
                ).symmetric(horizontal: 10.w),
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
                ).only(bottom: 3.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
