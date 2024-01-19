import '../../../../core/functions/custom_toast.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocListener<SignupCubit, SignupState>(
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

              showToastState(context,
                  ' تم التسجيل  بنجاح , تحقق من بريدك الالكتروني لتأكيد التسجيل ${context.read<SignupCubit>().emailController.text}');
              context.pushReplacementNamed(Routes.loginScreen);
            },
            error: (error) {
              context.pop();
              showToastState(context, error);
            },
          );
        },
        child: const SizedBox.shrink(),
      ),
    );
  }
}
