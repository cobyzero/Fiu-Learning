import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final bool isActive;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 100),
            child: Container(
              width: isActive ? 12.w : 11.w,
              height: isActive ? 12.w : 11.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive ? Palette.facebook : Palette.gray.withOpacity(.3),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Icon(
                icon,
                color: isActive ? Palette.white : Palette.textRegular,
                size: 17.sp,
              ),
            ).only(bottom: .5.h),
          ),
          Texts.regular(
            title,
            color: isActive ? Palette.facebook : Palette.textRegular,
            fontSize: 10.sp,
          ),
        ],
      ),
    );
  }
}
