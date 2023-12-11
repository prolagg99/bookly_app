import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(height: 23.h),
              SizedBox(height: 23.h),
              const FeauturedBooksListView(),
              const SizedBox(height: 51),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Newest Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
