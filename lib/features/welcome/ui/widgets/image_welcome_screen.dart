import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_assets.dart';

class ImageWelcomeScreen extends StatelessWidget {
  const ImageWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.onBoardingFour,
      fit: BoxFit.cover,
      height: 207.26.h,
      width: 203.15.w,
    );
  }
}
