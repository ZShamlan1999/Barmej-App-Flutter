// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImagesCard extends StatelessWidget {
  final String imageCards;
  final String backgroundImageCards;
  const CustomImagesCard(
      {super.key,
      required this.imageCards,
      required this.backgroundImageCards});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            width: 60.w,
            height: 58.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(backgroundImageCards),
                    fit: BoxFit.fill)),
          //   child: CachedNetworkImage(imageUrl:backgroundImageCards ,
          //       errorWidget: (context, url, error) => Icon(Icons.error),
          //       placeholder:(context, url) {
          //         return Shimmer.fromColors(
          //           baseColor: ColorsManger.grey.withOpacity(0.3),
          //           highlightColor: ColorsManger.white,
          //           child: Container(
          //             width: 60.w,
          //             height: 58.h,
          //           ),
          //         );
          //       }, ),
          ),
          Positioned(
            top: 15,
            right: 18,
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageCards), fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
