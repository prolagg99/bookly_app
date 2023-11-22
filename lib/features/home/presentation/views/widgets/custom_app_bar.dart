import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // var topSafeArea = MediaQuery.of(context).viewPadding.top;
    return Padding(
      padding: EdgeInsets.only(top: 48.h, left: 30.w, right: 30.w),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 75.w),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 25.w),
          ),
        ],
      ),
    );
  }
}
