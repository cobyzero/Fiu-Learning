import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/const.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:fuilearning/Features/Home/Presentation/Widgets/category_item.dart';
import 'package:fuilearning/Features/Home/Presentation/Widgets/courses_item.dart';
import 'package:fuilearning/Features/Home/Presentation/Widgets/lesson_item.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            width: 10.w,
            height: 10.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Palette.facebook,
            ),
            child: Image.asset(
              "${assetsImages}person.png",
              fit: BoxFit.cover,
            ),
          ),
          Texts.bold(
            "Hi Afsar, Welcome",
            fontSize: 17.sp,
          ).only(bottom: 2.h),
          SizedBox(
            width: double.infinity,
            height: 10.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return CategoryItem(
                  icon: Icons.lock_outline,
                  title: "All",
                  isActive: index % 2 == 0,
                  onTap: () {},
                ).only(right: 4.w);
              },
            ),
          ).only(bottom: 2.h),
          Container(
            margin: EdgeInsets.only(right: 5.w),
            width: double.infinity,
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Palette.black,
                  Palette.textBold,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.semiBold(
                      "Daily Test",
                      color: Palette.white,
                      fontSize: 16.sp,
                    ).only(bottom: 1.h),
                    Texts.regular(
                      "Develop yourself : 7-10 MIN",
                      color: Palette.gray,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
                IconButton.filled(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Palette.white,
                    foregroundColor: Palette.textBold,
                  ),
                  icon: const Icon(Icons.play_arrow),
                ),
              ],
            ),
          ).only(bottom: 2.h),
          SizedBox(
            width: double.infinity,
            height: 30.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const CoursesItem(
                  gradient: [
                    Palette.facebook,
                    Palette.blue,
                  ],
                  title: 'Basics',
                  description: 'COURSE',
                  minMin: 3,
                  maxMin: 10,
                ).only(right: 4.w);
              },
            ),
          ).only(bottom: 2.h),
          Texts.semiBold(
            "Recomended for you",
            fontSize: 15.sp,
          ).only(bottom: 2.h),
          SizedBox(
            height: 24.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const LessonItem(
                  image: "${assetsImages}lesson.png",
                  title: "Lesson 1",
                  description: "Words",
                ).only(right: 4.w);
              },
            ),
          ).only(bottom: 4.h),
        ],
      ).only(left: 5.w),
    );
  }
}
