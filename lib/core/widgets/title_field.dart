import 'package:flutter/material.dart';

import '../theming/font_weight_helper.dart';
import '../theming/styles.dart';

class TitleField extends StatelessWidget {
  final String text;
  const TitleField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.font16BlackRegular
          .copyWith(fontWeight: FontWeightHelper.medium),
    );
  }
}
