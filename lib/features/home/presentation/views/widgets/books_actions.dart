import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              btnText: "19.99€",
              btnColor: Colors.white,
              textStyle: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                luanchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              btnText: "Free preview",
              btnColor: const Color(0xffEF8262),
              textStyle: Styles.textStyle14.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
