// ignore_for_file: deprecated_member_use

import 'package:brmg_application/features/chatbot/chatbot_screen.dart';
import 'package:brmg_application/features/courses/ui/courses_screen.dart';
import 'package:brmg_application/features/home/logic/cubit/home_cubit.dart';
import 'package:brmg_application/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/theming/colors.dart';

PersistentTabController _controller = PersistentTabController();

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      navBarHeight: 75.h,
      backgroundColor: ColorsManger.white,
      decoration: NavBarDecoration(
        border: Border(
            top: BorderSide(
                width: 0.5, color: ColorsManger.black.withOpacity(0.16))),
      ),
    );
  }
}

List<Widget> _buildScreen() {
  return [
    //  BlocProvider(
    //   create: (context) => HomeCubit()..getHistoricalPeridos(),
    //   child: const HomeScreen()),
    BlocProvider(
      create: (context) => HomeCubit()..getLanguages(),
      child: const HomeScreen(),
    ),
    const CoursesScreen(),
    const ChatBotScreen(),
    const ChatBotScreen(),


  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        inactiveIcon:
        SvgPicture.asset(Assets.homeIcon, color: ColorsManger.grey),
        icon: SvgPicture.asset(Assets.homeIcon)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.coursesIcon),
        icon: SvgPicture.asset(Assets.coursesIcon, color: ColorsManger.yellow)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.chatBotIcon),
        icon: SvgPicture.asset(Assets.chatBotIcon, color: ColorsManger.yellow)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.profileIcon),
        icon: SvgPicture.asset(Assets.profileIcon, color: ColorsManger.yellow)),



  ];
}
