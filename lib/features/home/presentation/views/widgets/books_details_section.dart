import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          width: 162,
          higth: 243,
          imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
        ),
        SizedBox(height: 43.h),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontFamily: kGtSectraFine,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        SizedBox(height: 16.h),
        const BookRating(
          rating: 0.0,
        ),
        SizedBox(height: 36.h),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: BooksActions(
            bookModel: bookModel,
          ),
        ),
      ],
    );
  }
}
