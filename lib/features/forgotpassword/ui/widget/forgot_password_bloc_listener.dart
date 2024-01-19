import '../../../../core/functions/custom_toast.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/cubit/forgot_password_cubit.dart';
import '../../logic/cubit/forgot_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
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
                'تحقق من بريدك الالكتروني لاعادة تعيين كلمة المرور الخاصة بك');
            context.pushReplacementNamed(Routes.loginScreen);
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
