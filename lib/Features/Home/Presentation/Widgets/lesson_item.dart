import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.w,
          height: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ).only(bottom: 2.h),
        Texts.semiBold(
          title,
          fontSize: 14.sp,
        ).only(bottom: .5.h),
        Texts.regular(
          description,
          fontSize: 10.sp,
        ),
      ],
    );
  }
}
