import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {
  static final TextStyle font24BlackExtraExtraBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w900,
      color: ColorsManger.black,
      fontFamily: 'Avenir');
  static final TextStyle font22BlackMedium = TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManger.black,
      fontFamily: 'Avenir');
  static final TextStyle font18GreyMedium = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManger.grey,
      fontFamily: 'Avenir');
  static final TextStyle font16WhiteExtraBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.extraBold,
      color: ColorsManger.white,
      fontFamily: 'Avenir');
  static final TextStyle font8WhiteMedium = TextStyle(
      fontSize: 8.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManger.white,
      fontFamily: 'Avenir');
  static final TextStyle font16BlackRegular = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManger.black,
      fontFamily: 'Avenir');
  static final TextStyle font14BlackMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManger.black,
      fontFamily: 'Avenir');
  static final TextStyle font16GreyMedium = TextStyle(
      fontSize: 16.sp,
      color: ColorsManger.grey,
      fontWeight: FontWeightHelper.medium,
      fontFamily: 'Avenir');
  static final TextStyle font16BlackExtraBold = TextStyle(
      fontSize: 16.sp,
      color: ColorsManger.black,
      fontWeight: FontWeightHelper.extraBold,
      fontFamily: 'Avenir');
  static final TextStyle font35YellowRegular = TextStyle(
      fontSize: 35.sp,
      color: ColorsManger.yellow,
      fontWeight: FontWeightHelper.regular,
      letterSpacing: 3,
      fontFamily: 'Avenir');
  static final TextStyle font12lihgtGreyExtraBold = TextStyle(
      fontSize: 12.sp,
      color: ColorsManger.lihgtGrey,
      fontWeight: FontWeightHelper.extraBold,
      fontFamily: 'Avenir');

  static final TextStyle font18RedExtraBold = TextStyle(
      fontSize: 18.sp,
      color: ColorsManger.red,
      fontWeight: FontWeightHelper.extraBold,
      fontFamily: 'Avenir');
}
