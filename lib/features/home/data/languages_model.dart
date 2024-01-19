import 'package:freezed_annotation/freezed_annotation.dart';
part 'languages_model.g.dart';

@JsonSerializable()

class LanguagesModel {
  final String id;
  final String title;
  final String completedLessons;
  final String allLessons;
  final String numberHours;
  final String image;
  final String backgroundImage;
  LanguagesModel(this.backgroundImage, {
    required this.id,
    required this.title,
    required this.completedLessons,
    required this.allLessons,
    required this.numberHours,
    required this.image,
  });

  factory LanguagesModel.fromJson(json) => _$LanguagesModelFromJson(json);
}
