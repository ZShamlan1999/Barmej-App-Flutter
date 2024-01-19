import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BuildHeaderBoxCourse extends StatefulWidget {
  const BuildHeaderBoxCourse({super.key});

  @override
  State<BuildHeaderBoxCourse> createState() => _BuildHeaderBoxCourseState();
}

class _BuildHeaderBoxCourseState extends State<BuildHeaderBoxCourse> {
  int number = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 335.w,
        height: 75.h,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: const BoxDecoration(
            color: Color(0xffB0E7FF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'تعلم CSS',
                style: TextStyles.font8WhiteMedium.copyWith(fontSize: 22.sp),
              ),
            ),
            circularPercentIndicator(),
          ],
        ));
  }

  Widget circularPercentIndicator() {
    return CircularPercentIndicator(
      radius: 25.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 5.0,
      percent: 0.16,
      center: Text('16' '%',
          style:
              TextStyles.font14BlackMedium.copyWith(color: ColorsManger.white)),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: ColorsManger.white,
      progressColor: const Color(0xff00FF47),
    );
  }
}
