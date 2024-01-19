import '../helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../theming/colors.dart';

class CustomShimmerCategory extends StatelessWidget {
  const CustomShimmerCategory({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Shimmer.fromColors(
              baseColor: ColorsManger.grey.withOpacity(0.3),
              highlightColor: ColorsManger.white,
              child: Container(
                width: 335.w,
                height: 67.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsManger.grey.withOpacity(0.3)),
              )),
        ),
        verticalSpace(16),
        SizedBox(
          child: Shimmer.fromColors(
              baseColor: ColorsManger.grey.withOpacity(0.3),
              highlightColor: ColorsManger.white,
              child: Container(
                width: 335.w,
                height: 67.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsManger.grey.withOpacity(0.3)),
              )),
        ),
      ],
    );
  }
}
