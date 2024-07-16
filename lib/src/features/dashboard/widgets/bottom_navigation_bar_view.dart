import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_images.dart';
import 'package:flutter_assignment/src/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_assignment/src/features/dashboard/widgets/bottom_bar_icon_view.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key, required this.cubit});

  final DashboardCubit cubit;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomBarIconView(
              icon: AppImages.homeIcon,
              isSelected: cubit.currentTabIndex == 0,
              onTap: () {
                cubit.changeTab(tabIndex: 0);
              }),
          BottomBarIconView(
              icon: AppImages.searchIcon,
              isSelected: cubit.currentTabIndex == 1,
              onTap: () {
                cubit.changeTab(tabIndex: 1);
              }),
          BottomBarIconView(
              icon: AppImages.heartIcon,
              isSelected: cubit.currentTabIndex == 2,
              onTap: () {
                cubit.changeTab(tabIndex: 2);
              }),
        ],
      ),
    );
  }
}
