import '../../../../core/functions/custom_toast.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../logic/cubit/signin_cubit.dart';
import '../logic/cubit/signin_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninCubit, SigninState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManger.yellow,
                ),
              ),
            );
          },
          success: () {
            context.pop();
            FirebaseAuth.instance.currentUser!.emailVerified
                ? context.pushNamedAndRemoveUntil(Routes.mainScreen,
                    predicate: (route) => false)
                : showToastState(
                    context, 'يرجى التحقق من حسابك , اذهب الى ايميلك');
          },
          error: (error) {
            context.pop();
            showToastState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
