import 'routes.dart';
import '../../features/forgotpassword/logic/cubit/forgot_password_cubit.dart';
import '../../features/forgotpassword/ui/forgot_password_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';
import '../../features/signin/ui/logic/cubit/signin_cubit.dart';
import '../../features/signin/ui/signin_screen.dart';
import '../../features/signup/logic/cubit/signup_cubit.dart';
import '../../features/signup/ui/signup_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/welcome/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../main_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //  final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => SignupCubit(), child: const SignUpScreen()));
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => SigninCubit(),
                child: const SignInScreen()));
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => ForgotPasswordCubit(),
                child: const ForgotPasswordScreen()));
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.coursedetials:
        // return MaterialPageRoute(builder: (_) => const CourseDetialsScreen());
      //  case coursedetials:
      //   return MaterialPageRoute(
      //     builder: (_) => QustionsScreen(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: Text('No route defined for ${settings.name}'),
          )),
        );
    }
  }
}
