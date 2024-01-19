import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/strings.dart';
import 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(const SigninState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formState = GlobalKey<FormState>();
  final forgotPasswordFormKey = GlobalKey<FormState>();

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(const SigninState.loading());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      emit(const SigninState.success());
    } on FirebaseAuthException catch (e) {
      _signInHandleException(e);
    } catch (e) {
      emit(SigninState.error(error: e.toString()));
    }
  }

  void _signInHandleException(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      emit(const SigninState.error(error: AppStrings.errorInEmail));
    } else if (e.code == 'wrong-password') {
      emit(const SigninState.error(error: AppStrings.errorInPassword));
    } else {
      emit(const SigninState.error(
          error: 'تحقق من كتابة الايميل وكلمة المرور بشكل صحيح'));
    }
  }
}
