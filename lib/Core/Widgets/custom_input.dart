import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:sizer/sizer.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: TextStyle(
        fontSize: 14.sp,
      ),
      obscureText: widget.isPassword ? obscure : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: Icon(
                  obscure ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Palette.gray,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 5.w,
        ),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
        fillColor: Palette.filled,
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
