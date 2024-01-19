import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconsCard extends StatelessWidget {
  const CustomIconsCard({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: 12.w,
      height: 12.h,
    );
  }
}