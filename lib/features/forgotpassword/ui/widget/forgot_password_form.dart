import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/title_field.dart';
import '../../logic/cubit/forgot_password_cubit.dart';
import 'forgot_password_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  TextEditingController emailController = TextEditingController();
  final formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ForgotPasswordCubit forgotPasswordCubit =
        context.read<ForgotPasswordCubit>();
    return Form(
      key: forgotPasswordCubit.forgotPasswordFormKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const TitleField(text: AppStrings.email),
        SizedBox(
          height: 75.h,
          child: AppTextFormField(
            controller: forgotPasswordCubit.emailController,
            hintText: AppStrings.hintEmail,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return AppStrings.errorInEmail;
              }
            },
          ),
        ),
        verticalSpace(23),
        AppTextButton(
          buttonText: AppStrings.resetPassword,
          textStyle: TextStyles.font16WhiteExtraBold,
          onPressed: () {
            if (forgotPasswordCubit.forgotPasswordFormKey.currentState!
                .validate()) {
              forgotPasswordCubit.resetPasswordWithLink();
            }
          },
        ),
        const ForgotPasswordBlocListener()
      ]),
    );
  }
}
