import '../helpers/app_assets.dart';
import '../theming/colors.dart';
import 'custom_social_media_icons.dart';
import 'package:flutter/material.dart';

class BuildSocialMediaIcons extends StatelessWidget {
  const BuildSocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialMediaIcons(
            icon: Assets.googleIcon,
            color: ColorsManger.googleIconColor,
            onTap: () {}),
        CustomSocialMediaIcons(
            icon: Assets.facebookIcon,
            color: ColorsManger.facebookIconColors,
            onTap: () {}),
        CustomSocialMediaIcons(
            icon: Assets.lenkedinIcon,
            color: ColorsManger.lenkedInIconColors,
            onTap: () {})
      ],
    );
  }
}
