import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/title_field.dart';
import '../logic/cubit/signin_cubit.dart';
import 'forgot_password_text.dart';
import 'signin_bloc_listener.dart';

class SignInScreenBody extends StatefulWidget {
  const SignInScreenBody({super.key});

  @override
  State<SignInScreenBody> createState() => _SignInScreenBodyState();
}

class _SignInScreenBodyState extends State<SignInScreenBody> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    SigninCubit signinCubit = context.read<SigninCubit>();
    return Form(
      key: signinCubit.formState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(70),
          const TitleField(text: AppStrings.email),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              controller: signinCubit.emailController,
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
          const TitleField(text: AppStrings.password),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              controller: signinCubit.passwordController,
              hintText: AppStrings.hintPassword,
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                    isObscureText ? Icons.visibility_off : Icons.visibility),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppStrings.errorInPassword;
                }
                return null;
              },
            ),
          ),
          const ForgotPasswordText(),
          verticalSpace(30),
          AppTextButton(
            buttonText: AppStrings.login,
            textStyle: TextStyles.font16BlackExtraBold
                .copyWith(color: ColorsManger.white),
            buttonWidth: 500.w,
            onPressed: () {
              if (signinCubit.formState.currentState!.validate()) {
                signinCubit.signInWithEmailAndPassword();
              }
            },
          ),
          const SignInBlocListener()
        ],
      ),
    );
  }
}
