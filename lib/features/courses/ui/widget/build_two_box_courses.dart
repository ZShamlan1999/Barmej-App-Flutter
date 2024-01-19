import 'package:flutter/material.dart';

import 'part__of_course.dart';

class BuildTwoBoxCourses extends StatelessWidget {
  const BuildTwoBoxCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildPartOfBoxCourse(
            courseName: 'CSS',
            headerColor: Color(0xffB0E7FF),
            courseImage: 'assets/svgs/css.svg'),
        BuildPartOfBoxCourse(
            courseName: 'HTML',
            headerColor: Color(0xffFFE3D8),
            courseImage: 'assets/svgs/html.svg'),
      ],
    );
  }
}
