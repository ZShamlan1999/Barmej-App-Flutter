import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import 'build_box_content.dart';
import 'build_box_header_course.dart';

class BuildBoxCourse extends StatelessWidget {
  const BuildBoxCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 269.h,
      decoration: BoxDecoration(
          color: ColorsManger.white,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
                color: ColorsManger.black.withOpacity(0.8),
                blurRadius: 1,
                offset: Offset(0.2, 0.3))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BuildHeaderBoxCourse(),
          verticalSpace(23),
          const BuildBoxContent()
        ],
      ),
    );
  }
}
