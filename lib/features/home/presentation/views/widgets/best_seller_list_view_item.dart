import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber.withOpacity(.1),
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: [
          Container(
            width: 70.w,
            height: 105.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r),
              image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.book1,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harry Potter and the Goblet of Fire",
                  overflow: TextOverflow.clip,
                  style: Styles.textStyle18,
                ),
                SizedBox(height: 3.h),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Text("19.99 ", style: Styles.textStyle18),
                    const Text(
                      "\$",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 13.38.w,
        ),
        SizedBox(width: 6.3.w),
        const Text(
          "4.8",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          " (2390)",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
