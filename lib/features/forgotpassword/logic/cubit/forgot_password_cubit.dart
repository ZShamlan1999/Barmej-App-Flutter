import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(const ForgotPasswordState.initial());

  TextEditingController emailController = TextEditingController();
  final forgotPasswordFormKey = GlobalKey<FormState>();

  Future<void> resetPasswordWithLink() async {
    try {
      emit(const ForgotPasswordState.loading());
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text);
      emit(const ForgotPasswordState.success());
    } catch (e) {
      emit(ForgotPasswordState.error(error: e.toString()));
    }
  }
}
