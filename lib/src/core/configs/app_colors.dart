import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  ///MATERIAL COLOR
  static MaterialColor primarySwatchColor = MaterialColor(
    primaryColor.value,
    const <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    },
  );

  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color redColor = Colors.red;
  static const Color greenColor = Colors.green;
  static const Color transparentColor = Colors.transparent;

  ///COLOR CODES
  static const Color primaryColor = Color(0xff991F35);
  static const Color gradiantColor = Color(0xff330A12);
  static const Color textBlackColor = Color(0xff292929);
  static const Color textGreyColor = Color(0xffababab);

  static const Color toastColor = Color(0xff2a2928);
  static const Color scaffoldBackgroundColor = Color(0xffF6F6F6);

  static const List<Color> textLinearGradient = [primaryColor, gradiantColor];
}
