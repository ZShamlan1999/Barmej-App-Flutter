import '../../../core/helpers/app_assets.dart';

import '../../../core/functions/custom_toast.dart';
import '../../../core/widgets/custom_shimmer_category.dart';
import '../logic/cubit/home_cubit.dart';
import '../logic/cubit/home_state.dart';
import 'widget/custom_data_listview.dart';
import 'widget/title_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widget/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManger.white,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 45.h),
            child: const CustomAppBar(title: '' , icon:  Assets.notificationIcon,)),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [CustomHeader(), LanguagesSection()],
          ),
        ));
  }
}

class LanguagesSection extends StatelessWidget {
  const LanguagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        verticalSpace(10),
        const TitleSection(title: 'اللغات'),
        verticalSpace(5),
        const Languages()
      ],
    );
  }
}

class Languages extends StatelessWidget {
  const Languages({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is Error) {
          return showToastState(context, state.error);
        }
      },
      builder: (context, state) {
        return state is Loading
            ? const CustomShimmerCategory()
            : CustomDataListView(
                dataList: context.read<HomeCubit>().languagesList,
                );
      },
    );
  }
}
