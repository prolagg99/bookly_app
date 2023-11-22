import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 129.h,
      height: 193.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
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
