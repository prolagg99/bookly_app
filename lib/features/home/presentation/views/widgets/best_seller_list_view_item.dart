import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Container(
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
      ),
    );
  }
}
