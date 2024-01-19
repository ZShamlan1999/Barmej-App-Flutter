import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaIcons extends StatelessWidget {
  final String icon;
  final Function()? onTap;
  final Color color;
  const CustomSocialMediaIcons({super.key, required this.icon,required this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
            backgroundColor: color,
          radius: 25,
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
