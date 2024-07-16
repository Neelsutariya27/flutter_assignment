import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_images.dart';
import 'package:flutter_assignment/src/core/widgets/image_view.dart';
import 'package:flutter_assignment/src/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_assignment/src/features/dashboard/widgets/bottom_navigation_bar_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit cubit = BlocProvider.of<DashboardCubit>(context);
          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageView(imageUrl: AppImages.notificationIcon, isSVG: true, isAsset: false),
                        ImageView(imageUrl: AppImages.profileIcon, isSVG: true, isAsset: false),
                      ],
                    ),
                  ),
                  Expanded(child: cubit.getTabView()),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBarView(cubit: cubit),
          );
        },
      ),
    );
  }
}
