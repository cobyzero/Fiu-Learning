import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 14.sp,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 5.w,
        ),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
        fillColor: Palette.kPrimary,
        filled: true,
      ),
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 0,
        color: Colors.transparent,
      ),
    );
  }
}
