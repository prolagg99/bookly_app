import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.textStyle,
    this.borderRadius,
    this.onPressed,
  });
  final String btnText;
  final Color btnColor;
  final TextStyle textStyle;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(15),
          ),
        ),
        child: Text(btnText, style: textStyle),
      ),
    );
  }
}
