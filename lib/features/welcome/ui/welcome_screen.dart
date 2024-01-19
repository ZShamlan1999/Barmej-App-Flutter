import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/helpers/strings.dart';
import '../../../core/widgets/build_social_media_icons.dart';
import '../../onboarding/ui/widget/build_skip_text.dart';
import 'widgets/build_two_buttons.dart';
import 'widgets/text_or_over_social_media.dart';
import 'widgets/welcome_screen_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        verticalSpace(35),
        BuildSkipText(text: AppStrings.skip, onTap: () {}),
        const WelcomeScreenBody(),
        const BuildTwoButtons(),
        const TextOrOverSocialMedia(),
        verticalSpace(20),
        const BuildSocialMediaIcons(),
      ],
    ));
  }
}
