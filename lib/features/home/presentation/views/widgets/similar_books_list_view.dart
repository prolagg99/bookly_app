import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 112.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: const CustomBookImage(
                    width: 70,
                    radius: 7,
                    imageUrl:
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fedit.org%2Fbook-covers&psig=AOvVaw0xXiu030cQizm9d5Lsk1-L&ust=1702277228382000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCLDXo_6ihIMDFQAAAAAdAAAAABAE",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicatore();
        }
      },
    );
  }
}
