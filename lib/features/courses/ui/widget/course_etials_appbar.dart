import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class CourseDetialsAppBar extends StatefulWidget {
  final String title;
  final Color color;
  final Widget stateHeader;
  final String image;
  const CourseDetialsAppBar(
      {Key? key,
      required this.title,
      required this.color,
      required this.stateHeader,
      required this.image})
      : super(key: key);

  @override
  State<CourseDetialsAppBar> createState() => _CourseDetialsAppBarState();
}

class _CourseDetialsAppBarState extends State<CourseDetialsAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 376.w,
        color: widget.color,
        child: Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80.0.w),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff363636)),
                    ),
                  ),
                  IconButton(
                      color: ColorsManger.black,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset(
                        'assets/images/arrowback.svg',
                      )),
                ],
              ),
            ),
            verticalSpace(10),
            widget.stateHeader,
            verticalSpace(10),
            const Divider(color: ColorsManger.white, thickness: 1),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor:ColorsManger.white,
                indicatorWeight: 4,
                labelColor: const Color(0xff363636),
                labelStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [tab('الدروس'), tab('وصف')]),
          ],
        ),
      ),
    );
  }

  Widget tab(String tabName) {
    return Tab(
      text: tabName
    );
  }

  Widget circularPercentIndicator() {
    return CircularPercentIndicator(
      radius: 25.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 5.0,
      percent: 0,
      center: Text(
        '0',
        style: TextStyles.font14BlackMedium.copyWith(color: ColorsManger.white)),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor:ColorsManger.white,
      progressColor: const Color(0xff00FF47),
    );
  }
}
