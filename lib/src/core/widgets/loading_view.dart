import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/utils/page_navigator.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      height: MediaQuery.sizeOf(context).width / 7,
      width: MediaQuery.sizeOf(context).width / 7,
      child: const CircularProgressIndicator(
        color: AppColors.primaryColor,
        strokeWidth: 2,
      ),
    ));
  }
}

showLoadingDialog({
  required BuildContext context,
}) {
  showDialog(
      barrierDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return const Center(child: LoadingView());
      });
}

hideLoadingDialog({required BuildContext context}) {
  PageNavigator.pop(context: context);
}
