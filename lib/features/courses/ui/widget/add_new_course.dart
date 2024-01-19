import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/strings.dart';

class AddNewCourse extends StatelessWidget {
  const AddNewCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.addNewCourse,
            style: TextStyles.font16BlackExtraBold
                .copyWith(color: const Color(0xff636363), fontSize: 14.sp),
          ),
          horizontalSpace(2),
          SvgPicture.asset(
            Assets.addNewCourse,
            width: 20.w,
            height: 20.h,
          )
        ],
      ),
    );
  }
}
