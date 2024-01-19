// ignore_for_file: avoid_function_literals_in_foreach_calls
import 'package:brmg_application/features/home/data/languages_model.dart';
import 'package:brmg_application/features/home/logic/cubit/home_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  List<LanguagesModel> languagesList = [];

  Future getLanguages() async {
    try {
      emit(const HomeState.getLanguagesLoading());
      await FirebaseFirestore.instance.collection('languages').get().then(
            (value) => value.docs.forEach(
              (element) {
                languagesList.add(
                  LanguagesModel.fromJson(element.data()),
                );
                emit(const HomeState.getLanguagesSuccess());
              },
            ),
          );
    } on Exception catch (e) {
      emit(HomeState.getLanguagesError(error: e.toString()));
    }
  }
}
