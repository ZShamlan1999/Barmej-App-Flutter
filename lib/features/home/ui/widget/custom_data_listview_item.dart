import 'custom_images_card.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/languages_model.dart';
import 'custom_icons_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/spacing.dart';
import 'custom_text_card.dart';

class CustomDataListViewItem extends StatelessWidget {
  const CustomDataListViewItem({super.key, required this.model});
  final LanguagesModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.none,
        width: 335.w,
        height: 67.h,
        decoration: BoxDecoration(
            color: ColorsManger.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                color: const Color(0xff4D4D4D).withOpacity(0.12),
              ),
            ]),
        child: Row(
          children: [
            CustomImagesCard(
                backgroundImageCards: model.backgroundImage,
                imageCards: model.image),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  verticalSpace(9),
                  Text(model.title,
                      style: TextStyles.font16BlackExtraBold
                          .copyWith(fontSize: 14.sp)),
                  verticalSpace(14),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomTextCard(text: '${model.completedLessons} / '),
                          const CustomTextCard(text: 'درس '),
                          CustomTextCard(text: model.allLessons),
                          horizontalSpace(5),
                          const CustomIconsCard(icon: Assets.bookIcon),
                          horizontalSpace(20),
                          CustomTextCard(text: model.numberHours),
                          const CustomIconsCard(icon: Assets.clockIcon)
                        ],
                      )),
                ],
              ),
            ),
            //    horizontalSpace(30),
            subscriptonText(true),
          ],
        ),
      ),
    );
  }

  // void selectItem(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => CourseDetials(
  //       courseid: idCard,
  //       titleCard,
  //       imageCards,
  //       backgroundColor,
  //       levelOfProgess: levelOfProgess,
  //       courseState: isSubscribe,
  //     ),
  //   ));
  // }

  Widget subscriptonText(bool subs) {
    return Expanded(
      flex: 1,
      child: Visibility(
        visible: subs == true ? true : false,
        child: Container(
            width: 75.w,
            height: 18.h,
            margin: const EdgeInsets.only(bottom: 30, left: 10),
            decoration: BoxDecoration(
                color: const Color(0xff91F0C8),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text('مشترك', style: TextStyles.font12lihgtGreyExtraBold
                    //        TextStyle(color: const Color(0xff484848), fontSize: 10.sp),
                    ))),
      ),
    );
  }
}
