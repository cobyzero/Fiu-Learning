import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

class CoursesItem extends StatelessWidget {
  const CoursesItem({
    super.key,
    required this.gradient,
    required this.title,
    required this.description,
    required this.minMin,
    required this.maxMin,
    this.textColor,
    this.bottonColor,
    this.bottonTextColor,
  });

  final List<Color> gradient;
  final String title;
  final String description;
  final int minMin;
  final int maxMin;
  final Color? textColor;
  final Color? bottonColor;
  final Color? bottonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: gradient,
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Texts.semiBold(
            title,
            fontSize: 16.sp,
            color: textColor ?? Palette.white,
          ).only(bottom: 1.h),
          Texts.regular(
            description,
            fontSize: 10.sp,
            color: textColor ?? Palette.white,
          ).only(bottom: 1.h),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bottonColor ?? Palette.white,
                ),
                onPressed: () {},
                child: Texts.regular(
                  "START",
                  fontSize: 10.sp,
                  color: bottonTextColor ?? Palette.gray,
                ),
              ).only(right: 2.w),
              Expanded(
                child: Texts.regular(
                  "$minMin-$maxMin MIN",
                  fontSize: 10.sp,
                  alignment: TextAlign.center,
                  color: textColor ?? Palette.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
