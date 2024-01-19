import 'package:flutter/material.dart';

class CustomAppText extends StatelessWidget {
  const CustomAppText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
