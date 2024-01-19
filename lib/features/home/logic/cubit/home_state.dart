import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getLanguagesLoading() = Loading;
  const factory HomeState.getLanguagesSuccess() = Success;
  const factory HomeState.getLanguagesError({required String error}) = Error;

  const factory HomeState.getCourseLessonLoading() = CourseLessonLoading;
  const factory HomeState.getCourseLessonSuccess() = CourseLessonSuccess;
  const factory HomeState.getCourseLessonError({required String error}) =
      CourseLessonError;
}
