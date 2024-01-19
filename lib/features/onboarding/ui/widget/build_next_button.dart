import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

class BuildNextButton extends StatelessWidget {
  const BuildNextButton({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.page == 2
            ? Navigator.pushNamed(context, Routes.welcomeScreen)
            : controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.bounceInOut);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 38.h,
          alignment: Alignment.center,
          width: 39.w,
          decoration: BoxDecoration(
            color: ColorsManger.yellow,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Icon(
            Icons.navigate_next,
            color: ColorsManger.white,
            size: 30.sp,
          )),
    );
  }
}
