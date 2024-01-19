import '../../../../core/helpers/spacing.dart';
import '../../data/languages_model.dart';
import 'custom_data_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDataListView extends StatelessWidget {
  const CustomDataListView({super.key, required this.dataList});
  final List<LanguagesModel> dataList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) {
        return verticalSpace(16);
      },
      clipBehavior: Clip.none,
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return CustomDataListViewItem(
          model: dataList[index],
        );
      },
    );
  }
}
