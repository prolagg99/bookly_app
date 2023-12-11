import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
              width: 70,
              higth: 105,
            ),
            SizedBox(width: 30.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo.title!,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                    maxLines: 2,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    bookModel.volumeInfo.authors != null
                        ? bookModel.volumeInfo.authors!.first
                        : "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xff707070),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Text("Free", style: Styles.textStyle18),
                      // const Text(
                      //   "\$",
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
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
