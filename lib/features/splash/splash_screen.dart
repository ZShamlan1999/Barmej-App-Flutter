import 'package:flutter/material.dart';

import '../../core/helpers/app_assets.dart';
import '../../core/helpers/extensions.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //   const Duration(seconds: 2),
    //   () {
    //     var route = MaterialPageRoute(builder: (context) => OnBoradingScreen());
    //     Navigator.pushReplacement(context, route);
    //   },
    // );
    delayedNavigate(context, Routes.onBoardingScreen);
    // bool isOnBoardingVisited =
    //     getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    // if (isOnBoardingVisited == true) {
    //   FirebaseAuth.instance.currentUser == null
    //       ? delayedNavigate(context, Routes.loginScreen)
    //       : FirebaseAuth.instance.currentUser!.emailVerified == true
    //           ? delayedNavigate(context, Routes.mainScreen)
    //           : delayedNavigate(context, Routes.loginScreen);
    // } else {
    //   delayedNavigate(context, Routes.onBoardingScreen);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.yellow,
      body: Center(
        child: Image.asset(
          Assets.logo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

void delayedNavigate(BuildContext context, path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      context.pushNamedAndRemoveUntil(
        path,
        predicate: (route) => false,
      );
    },
  );
}
