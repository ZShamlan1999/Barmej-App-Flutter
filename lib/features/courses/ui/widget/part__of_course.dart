import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BuildPartOfBoxCourse extends StatelessWidget {
  final String courseName;
  final Color headerColor;
  final String courseImage;
  const BuildPartOfBoxCourse(
      {super.key,
      required this.courseName,
      required this.headerColor,
      required this.courseImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.w,
      height: 130.h,
      decoration: BoxDecoration(
          color: ColorsManger.white,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          boxShadow: [
            BoxShadow(
                color: ColorsManger.black.withOpacity(0.8),
                blurRadius: 1,
                offset: Offset(0.2, 0.3)
                // spreadRadius: 1,
                )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          headerBox(),
          verticalSpace(20),
          SvgPicture.asset(
            courseImage,
            width: 48.h,
            height: 48.w,
          ),
        ],
      ),
    );
  }

  Widget headerBox() {
    return Container(
        width: 154.w,
        height: 35.97.h,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: headerColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(courseName,
                  style: TextStyles.font14BlackMedium
                      .copyWith(color: ColorsManger.white)),
            ),
            circularPercentIndicator()
          ],
        ));
  }

  Widget circularPercentIndicator() {
    return CircularPercentIndicator(
      radius: 13.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 3.0,
      percent: 0.16,
      center: Text('16 %', style: TextStyles.font8WhiteMedium),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: ColorsManger.white,
      progressColor: const Color(0xff00FF47),
    );
  }
}
