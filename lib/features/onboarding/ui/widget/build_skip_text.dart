import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildSkipText extends StatelessWidget {
  const BuildSkipText({super.key, this.onTap, required this.text});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushReplacementNamed(Routes.mainScreen);
      },
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: Text(
            text,
            style: TextStyles.font16BlackRegular
                .copyWith(color: ColorsManger.black.withOpacity(0.54)),
          ),
        ),
      ),
    );
  }
}
