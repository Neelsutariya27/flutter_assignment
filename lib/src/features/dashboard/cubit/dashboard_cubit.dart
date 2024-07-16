import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/utils/show_logs.dart';
import 'package:flutter_assignment/src/features/home/home_screen.dart';
import 'package:flutter_assignment/src/features/search/search_screen.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitialState());

  int currentTabIndex = 0;

  void changeTab({required int tabIndex, dynamic arguments}) {
    emit(DashboardInitialState());
    currentTabIndex = tabIndex;
    showLogs(message: "CHANGE TAB -- $tabIndex -- $currentTabIndex");
    emit(DashboardTabChangeState());
  }

  Widget getTabView() {
    switch (currentTabIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SearchScreen();
      case 2:
        return Container();
      default:
        return Container(color: AppColors.transparentColor);
    }
  }
}
