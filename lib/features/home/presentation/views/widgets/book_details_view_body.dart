import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 44.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            SizedBox(height: 33.h),
            const CustomBookImage(width: 162, higth: 243),
            SizedBox(height: 43.h),
            Text(
              "The Jungle Book",
              style: Styles.textStyle30.copyWith(
                fontFamily: kGtSectraFine,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.white.withOpacity(.7),
              ),
            ),
            SizedBox(height: 16.h),
            const BookRating(),
            SizedBox(height: 36.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: const BooksActions(),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            const SimilarBooksListView(),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
