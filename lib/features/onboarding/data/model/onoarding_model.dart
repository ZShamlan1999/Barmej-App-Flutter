import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/strings.dart';

class OnBoardingModel {
  final String title;
  final String image;
  final String description;

  OnBoardingModel(
      {required this.title, required this.image, required this.description});
}

List<OnBoardingModel> onboardingData = [
  OnBoardingModel(
      title: AppStrings.onBoardingTitleOne,
      image: Assets.onBoardingOne,
      description: AppStrings.onBoardingDescriptionOne),
  OnBoardingModel(
      title: AppStrings.onBoardingTitleTwo,
      image: Assets.onBoardingTwo,
      description: AppStrings.onBoardingDescriptionTwo),
  OnBoardingModel(
      title: AppStrings.onBoardingTitleThree,
      image: Assets.onBoardingThree,
      description: AppStrings.onBoardingDescriptionThree),
];
