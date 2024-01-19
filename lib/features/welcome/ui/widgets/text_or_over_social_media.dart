import 'package:flutter/material.dart';

import '../../../../core/helpers/strings.dart';
import '../../../../core/theming/styles.dart';

class TextOrOverSocialMedia extends StatelessWidget {
  const TextOrOverSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.orOverSoicalMedia,
        style: TextStyles.font18GreyMedium.copyWith(fontSize: 16),
      ),
    );
  }
}
