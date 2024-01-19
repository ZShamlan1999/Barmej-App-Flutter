import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/model/onoarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody(
      {super.key, required this.controller, required this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         verticalSpace(124),
        Container(
          height: 400.h,
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: PageView.builder(
            itemCount: onboardingData.length,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 189.55.h,
                    width: 295.07.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(onboardingData[index].image),
                          fit: BoxFit.fill),
                    ),
                  ),
                  verticalSpace(53),
                  Text(
                    onboardingData[index].title,
                    style: TextStyles.font24BlackExtraExtraBold,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(33),
                  Text(
                    onboardingData[index].description,
                    style: TextStyles.font18GreyMedium,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          ),
        ),
        verticalSpace(80),
      ],
    );
  }
}
