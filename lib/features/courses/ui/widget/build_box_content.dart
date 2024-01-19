import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BuildBoxContent extends StatelessWidget {
  const BuildBoxContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/svgs/css.svg',
          width: 68.w,
          height: 68.h,
        ),
        verticalSpace(9),
        Text(
          'اسلوب كتابة CSS',
          style:
              TextStyles.font16GreyMedium.copyWith(color: ColorsManger.black),
        ),
        verticalSpace(10),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 154.w,
            height: 39.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 1, color: const Color(0xffB0E7FF))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                horizontalSpace(18),
                SvgPicture.asset(Assets.arrowBackIcon,
                    height: 10.h, width: 10.w),
                horizontalSpace(40),
                Text('استمر', style: TextStyles.font14BlackMedium)
              ],
            ),
          ),
        )
      ],
    );
  }
}
