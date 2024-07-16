import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle regularTextStyle = const TextStyle(
    color: AppColors.blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );

  static TextStyle semiBoldTestStyle = const TextStyle(
    color: AppColors.blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
  );

  static TextStyle boldTextStyle = const TextStyle(
    color: AppColors.blackColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: "Poppins",
  );
}
