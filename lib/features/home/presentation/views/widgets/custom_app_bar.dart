import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // var topSafeArea = MediaQuery.of(context).viewPadding.top;
    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 30, right: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 75),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 25),
          ),
        ],
      ),
    );
  }
}
