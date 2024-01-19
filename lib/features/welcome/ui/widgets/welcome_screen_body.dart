import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_app_text.dart';
import 'image_welcome_screen.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 86.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(63),
          const ImageWelcomeScreen(),
          verticalSpace(51),
          CustomAppText(
            text: AppStrings.titleWelcomeScreen,
            style: TextStyles.font24BlackExtraExtraBold.copyWith(fontSize: 22),
          ),
          verticalSpace(90),
        ],
      ),
    );
  }
}
