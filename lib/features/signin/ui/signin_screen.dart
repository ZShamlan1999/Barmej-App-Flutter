import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/helpers/strings.dart';
import '../../../core/widgets/build_social_media_icons.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widget/signIn_screen_body.dart';
import '../../welcome/ui/widgets/text_or_over_social_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 45.h),
          child: const CustomAppBar(title: AppStrings.login ,icon: Assets.arrowBackIcon)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SignInScreenBody(),
                verticalSpace(56),
                const TextOrOverSocialMedia(),
                verticalSpace(20),
                const BuildSocialMediaIcons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
