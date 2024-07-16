import 'package:flutter/material.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/core/configs/app_text_style.dart';

class RegularTextView extends StatelessWidget {
  const RegularTextView({
    super.key,
    required this.data,
    this.rightPadding = 0,
    this.leftPadding = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.fontWeight,
    this.textColor,
    this.fontSize,
    this.textAlign,
    this.textDecoration,
    this.maxLine,
    this.fontFamily,
    this.height,
    this.letterSpacing,
  });

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;
  final String? fontFamily;
  final double? height;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.regularTextStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontFamily: fontFamily,
            height: height,
            decorationColor: textColor ?? AppColors.blackColor,
            letterSpacing: letterSpacing,
            decoration: textDecoration),
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
      ),
    );
  }
}

class SemiBoldTextView extends StatelessWidget {
  const SemiBoldTextView(
      {super.key,
      required this.data,
      this.rightPadding = 0,
      this.leftPadding = 0,
      this.topPadding = 0,
      this.bottomPadding = 0,
      this.fontWeight,
      this.textColor,
      this.fontSize,
      this.textAlign,
      this.textDecoration,
      this.height,
      this.maxLine});

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.semiBoldTestStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            height: height,
            overflow: TextOverflow.ellipsis,
            decoration: textDecoration),
        textAlign: textAlign,
        maxLines: maxLine,
      ),
    );
  }
}

class BoldTextView extends StatelessWidget {
  const BoldTextView(
      {super.key,
      required this.data,
      this.rightPadding = 0,
      this.leftPadding = 0,
      this.topPadding = 0,
      this.bottomPadding = 0,
      this.fontWeight,
      this.textColor,
      this.fontSize,
      this.textAlign,
      this.textDecoration,
      this.maxLine,
      this.height,
      this.letterSpacing,
      this.decorationStyle,
      this.decorationColor,
      this.overflow});

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;
  final double? height;
  final double? letterSpacing;
  final TextDecorationStyle? decorationStyle;
  final Color? decorationColor;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.boldTextStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            height: height,
            letterSpacing: letterSpacing,
            decorationColor: decorationColor,
            decorationStyle: decorationStyle,
            overflow: overflow,
            decoration: textDecoration),
        textAlign: textAlign,
        maxLines: maxLine,
      ),
    );
  }
}
