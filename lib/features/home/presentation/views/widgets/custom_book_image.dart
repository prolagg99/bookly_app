import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.width = 129,
    this.higth = 193,
    this.radius = 14,
  });
  final double? width;
  final double? higth;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!.h,
      height: higth!.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
        image: const DecorationImage(
          image: AssetImage(AssetsData.book1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
