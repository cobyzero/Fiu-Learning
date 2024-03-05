import 'package:easy_padding/easy_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Core/Static/texts.dart';
import 'package:sizer/sizer.dart';

class BottonMenuItem extends StatelessWidget {
  const BottonMenuItem({
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
              width: isActive ? 10.w : 8.w,
              height: isActive ? 10.w : 8.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive ? Palette.kPrimary : null,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Icon(
                icon,
                color: isActive ? Palette.white : Palette.textRegular,
                size: 20.sp,
              ),
            ).only(bottom: .5.h),
          ),
          Texts.regular(
            title,
            color: isActive ? Palette.kPrimary : Palette.textRegular,
            fontSize: 10.sp,
          ),
        ],
      ),
    );
  }
}
