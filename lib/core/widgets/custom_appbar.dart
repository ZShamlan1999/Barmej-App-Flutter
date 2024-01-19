import '../theming/colors.dart';
import '../theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String icon;
  const CustomAppBar({
    super.key,
    required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        clipBehavior: Clip.none,
        titleTextStyle:
            TextStyles.font24BlackExtraExtraBold.copyWith(fontSize: 22.sp),
        // systemOverlayStyle:
        //     const SystemUiOverlayStyle(statusBarColor: ColorsManger.white),
            
        backgroundColor: ColorsManger.white,
        title: Text(title),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
             icon,
              width: 18.w,
              height: 22.h,
            )));
  }
}
