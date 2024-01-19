import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class BuildTwoButtons extends StatelessWidget {
  const BuildTwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTextButton(
              buttonText: AppStrings.createAccount,
              onPressed: () {
                context.pushNamed(Routes.signUpScreen);
              },
              textStyle: TextStyles.font16BlackExtraBold,
              backgroundColor: ColorsManger.white,
              borderside: 2,
            ),
            AppTextButton(
              buttonText: AppStrings.login,
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              textStyle: TextStyles.font16BlackExtraBold
                  .copyWith(color: ColorsManger.white),
            )
          ],
        ),
        verticalSpace(46)
      ],
    );
  }
}
