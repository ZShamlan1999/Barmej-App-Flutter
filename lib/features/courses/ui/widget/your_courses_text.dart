import 'package:flutter/material.dart';

import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class YourCoursesText extends StatelessWidget {
  const YourCoursesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppStrings.yourCourses,
        style:
            TextStyles.font18RedExtraBold.copyWith(color: ColorsManger.black));
  }
}
