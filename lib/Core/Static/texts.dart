import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final Color color;
  final double height;
  final int maxLines;
  final String? fontFamily;
  final double letterSpacing;
  final double? width;
  const Texts(
    this.text, {
    super.key,
    this.fontSize = 15,
    required this.fontWeight,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    required this.color,
    this.fontFamily,
    this.letterSpacing = 0,
    this.width,
  });

  const Texts.bold(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.textBold,
    this.maxLines = 30,
    this.fontFamily = "Montserrat-Bold",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.bold;

  const Texts.regular(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.textRegular,
    this.maxLines = 30,
    this.fontFamily = "Montserrat-Regular",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.normal;

  const Texts.semiBold(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 15,
    this.alignment = TextAlign.left,
    this.color = Palette.textSemiBold,
    this.maxLines = 30,
    this.fontFamily = "Montserrat-SemiBold",
    this.letterSpacing = 0,
    this.width,
  }) : fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        textAlign: alignment,
        style: GoogleFonts.montserrat().copyWith(
          color: color,
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          decoration: TextDecoration.none,
          letterSpacing: letterSpacing,
          fontFamily: fontFamily,
        ),
        maxLines: maxLines,
        softWrap: true,
      ),
    );
  }
}
