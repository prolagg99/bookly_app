import 'package:bookly_app/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.width = 129,
    this.higth = 193,
    this.radius = 14,
    required this.imageUrl,
  });
  final double? width;
  final double? higth;
  final double? radius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!.h,
      height: higth!.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        border: Border.all(width: 1, color: borderColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius!),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          // placeholder: (context, url) => const Center(
          //   child: CircularProgressIndicator(),
          // ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
