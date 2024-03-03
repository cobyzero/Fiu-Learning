import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/const.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

enum SocialButton {
  facebook,
  google,
}

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.type});

  final SocialButton type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SocialButton.google:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          height: 7.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Palette.gray.withOpacity(.5),
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "${assetsImages}google icon.png",
                width: 10.w,
              ),
              Texts.regular(
                "CONTINUE WITH GOOGLE",
                color: Palette.textSemiBold,
                fontSize: 13.sp,
              ),
            ],
          ),
        );
      case SocialButton.facebook:
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          height: 7.h,
          decoration: BoxDecoration(
            color: Palette.facebook,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "${assetsImages}facebook icon.png",
                width: 10.w,
              ),
              Texts.regular(
                "CONTINUE WITH FACEBOOK",
                color: Palette.white,
                fontSize: 13.sp,
              ),
            ],
          ),
        );

      default:
        return const SizedBox.shrink();
    }
  }
}
