import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/helpers/app_assets.dart';
import '../../core/helpers/spacing.dart';
import '../../core/helpers/strings.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.chatBoot),
            verticalSpace(10),
            Text(AppStrings.hello,
                style: TextStyles.font18GreyMedium
                    .copyWith(color: ColorsManger.black)),
            verticalSpace(8),
            Text(AppStrings.contentChatBotScreen,
                style: TextStyles.font18GreyMedium
                    .copyWith(color: ColorsManger.black)),
            verticalSpace(30),
            DefaultTextStyle(
                style: TextStyles.font35YellowRegular,
                child: AnimatedTextKit(
                    animatedTexts: [WavyAnimatedText(AppStrings.soon)],
                    repeatForever: true,
                    isRepeatingAnimation: true)),
          ],
        ),
      ),
    );
  }
}
