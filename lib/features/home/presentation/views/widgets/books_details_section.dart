import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookImage(
          width: 162,
          higth: 243,
          imageUrl:
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fedit.org%2Fbook-covers&psig=AOvVaw0xXiu030cQizm9d5Lsk1-L&ust=1702277228382000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCLDXo_6ihIMDFQAAAAAdAAAAABAE",
        ),
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
      ],
    );
  }
}
