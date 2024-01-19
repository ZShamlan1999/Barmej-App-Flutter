import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/theming/colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      decoration: const BoxDecoration(
          color: ColorsManger.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                Assets.imagesHeader,
              ))),
    );
  }
}
