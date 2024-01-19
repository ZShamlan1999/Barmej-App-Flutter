import 'package:flutter/material.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/helpers/strings.dart';
import '../../../core/routing/routes.dart';
import 'widget/build_dots_Indecator.dart';
import 'widget/build_skip_text.dart';
import 'widget/onboarding_body.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        verticalSpace(35),
        BuildSkipText(
            text: currentPage == 2 ? '' : AppStrings.skip,
            onTap: () {
              // onBoardingVisited();
              context.pushReplacementNamed(Routes.welcomeScreen);
            }),
        OnBoardingBody(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            }),
        BuildDotsIndecator(currentPage: currentPage, controller: controller)
      ],
    ));
  }
}
