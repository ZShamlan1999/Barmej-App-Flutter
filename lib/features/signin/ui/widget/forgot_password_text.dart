import 'package:flutter/material.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.forgotPasswordScreen);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppStrings.forgotPasswordText,
          style: TextStyles.font16GreyMedium,
        ),
      ),
    );
  }
}
