import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
