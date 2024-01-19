import 'signup_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formState = GlobalKey<FormState>();
  signUpWithEmailAndPassword() async {
    try {
      emit(const SignupState.loading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      addUserProfile();
      verifyEmail();
      emit(const SignupState.success());
    } on FirebaseAuthException catch (e) {
      _signUpHandleException(e);
    } catch (e) {
      emit(Error(error: e.toString()));
    }
  }

  void _signUpHandleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(const SignupState.error(error: 'كلمة المرور ضعيفة'));
    } else if (e.code == 'email-already-in-use') {
      emit(const SignupState.error(error: 'الايميل مستخدم من قبل'));
    } else if (e.code == 'invalid-email') {
      emit(const SignupState.error(error: 'الايميل غير صحيح'));
    } else {
      emit(SignupState.error(error: e.code));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users
        .add({"name": nameController.text, "email": emailController.text});
  }
}
