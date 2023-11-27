import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeauturedBooksListView extends StatelessWidget {
  const FeauturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 193.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
