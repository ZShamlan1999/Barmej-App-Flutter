import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/title_field.dart';
import '../../logic/cubit/signup_cubit.dart';
import 'signup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});
  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(70),
          const TitleField(text: AppStrings.name),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              controller: context.read<SignupCubit>().nameController,
              hintText: AppStrings.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.errorIsEmpty;
                }
                return null;
              },
            ),
          ),
          const TitleField(text: AppStrings.email),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              controller: context.read<SignupCubit>().emailController,
              hintText: AppStrings.hintEmail,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return AppStrings.enterCorrectEmail;
                }
              },
            ),
          ),
          const TitleField(text: AppStrings.password),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              controller: context.read<SignupCubit>().passwordController,
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
                  return AppStrings.errorIsEmpty;
                }
                if (value.length < 8) {
                  return AppStrings.passwordIsWeak;
                }
                if (value.length > 20) {
                  return AppStrings.passwordGreatherThan20;
                }
                return null;
              },
            ),
          ),
          const TitleField(text: AppStrings.confirmPassword),
          SizedBox(
            height: 75.h,
            child: AppTextFormField(
              hintText: AppStrings.confirmPassword,
              controller: context.read<SignupCubit>().confirmPasswordController,
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
                  return AppStrings.errorIsEmpty;
                }
                if (context
                        .read<SignupCubit>()
                        .confirmPasswordController
                        .text
                        .trim() !=
                    context
                        .read<SignupCubit>()
                        .passwordController
                        .text
                        .trim()) {
                  return AppStrings.passwordNotMatching;
                }
              },
            ),
          ),
          verticalSpace(34),
          AppTextButton(
            buttonText: AppStrings.createAccount,
            textStyle: TextStyles.font16BlackExtraBold
                .copyWith(color: ColorsManger.white),
            buttonWidth: 500.w,
            onPressed: () {
              if (context
                  .read<SignupCubit>()
                  .formState
                  .currentState!
                  .validate()) {
                context.read<SignupCubit>().signUpWithEmailAndPassword();
              }
            },
          ),
          const SignUpBlocListener()
        ],
      ),
    );
  }
}
