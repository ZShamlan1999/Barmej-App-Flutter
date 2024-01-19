import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widget/add_new_course.dart';
import 'widget/build_box_course.dart';
import 'widget/build_two_box_courses.dart';
import 'widget/your_courses_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 45.h),
          child: const CustomAppBar(title: '', icon: Assets.notificationIcon)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace(65),
            const BuildBoxCourse(),
            verticalSpace(33),
            const YourCoursesText(),
            verticalSpace(13),
            const BuildTwoBoxCourses(),
            verticalSpace(47),
            const AddNewCourse()
          ],
        ),
      ),
    );
  }
}
