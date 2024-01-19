import '../../../../core/theming/colors.dart';
import '../../data/model/onoarding_model.dart';
import 'build_next_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDotsIndecator extends StatelessWidget {
  const BuildDotsIndecator(
      {super.key, required this.currentPage, required this.controller});
  final int currentPage;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
            children: List<Widget>.generate(onboardingData.length, (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 7.h,
            width: (index == currentPage) ? 16.w : 7.w,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: (index == currentPage)
                    ? ColorsManger.yellow
                    : ColorsManger.grey),
          );
        })),
        horizontalSpace(50),
        BuildNextButton(controller: controller)
      ],
    );
  }
}
