import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          100.w,
          8.h,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Palette.kPrimary,
        elevation: 10,
      ),
      child: Texts.bold(
        text,
        fontSize: 13.sp,
      ),
    );
  }
}
