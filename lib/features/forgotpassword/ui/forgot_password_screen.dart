import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/helpers/strings.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_app_text.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widget/forgot_password_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 45.h),
          child: const CustomAppBar(title: '',icon:  Assets.arrowBackIcon,)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                verticalSpace(52),
                CustomAppText(
                    text: AppStrings.forgotPasswordText,
                    style: TextStyles.font22BlackMedium),
                verticalSpace(21),
                Text(AppStrings.forgotPasswordScreenContnet,
                    style: TextStyles.font16GreyMedium),
                verticalSpace(21),
                const ForgotPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
