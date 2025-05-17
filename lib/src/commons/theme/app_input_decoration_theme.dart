import 'package:flutter/material.dart';

import '../commons.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(8.0, 1.0, AppColors.borderColor),
    focusedBorder: _createInputBorder(8.0, 2.0, AppColors.primaryColorLight),
    errorBorder: _createInputBorder(8.0, 1.0, AppColors.borderColorError),
    focusedErrorBorder: _createInputBorder(
      8.0,
      2.0,
      AppColors.onAccentColorLight,
    ),
    enabledBorder: _createInputBorder(8.0, 1.0, AppColors.borderColor),
    disabledBorder: _createInputBorder(
      8.0,
      1.0,
      AppColors.borderColor.withValues(alpha: .5),
    ),
    filled: true,
    fillColor: AppColors.surfaceLight,
    labelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySM,
      fontWeight: FontWeight.w400,
      fontColor: AppColors.onSecondaryColorLight,
    ),
    floatingLabelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelXS,
      fontColor: AppColors.primaryColorLight,
    ),
    hintStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySM,
      fontColor: AppColors.midGrey,
    ),
    errorStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelXS,
      fontColor: AppColors.onAccentColorLight,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 14.0,
    ),
    iconColor: AppColors.midGrey,
    alignLabelWithHint: true,
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(8.0, 1.0, AppColors.borderColor),
    focusedBorder: _createInputBorder(8.0, 2.0, AppColors.primaryColorDark),
    errorBorder: _createInputBorder(8.0, 1.0, AppColors.borderColorError),
    focusedErrorBorder: _createInputBorder(
      8.0,
      2.0,
      AppColors.onAccentColorDark,
    ),
    enabledBorder: _createInputBorder(8.0, 1.0, AppColors.borderColor),
    disabledBorder: _createInputBorder(
      8.0,
      1.0,
      AppColors.borderColor.withValues(alpha: .5),
    ),
    filled: true,
    fillColor: AppColors.surfaceDark,
    labelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySM,
      fontWeight: FontWeight.w400,
      fontColor: AppColors.onSecondaryColorDark,
    ),
    floatingLabelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelXS,
      fontColor: AppColors.primaryColorDark,
    ),
    hintStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySM,
      fontColor: AppColors.midGrey,
    ),
    errorStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelXS,
      fontColor: AppColors.onAccentColorDark,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 14.0,
    ),
    iconColor: AppColors.midGrey,
    alignLabelWithHint: true,
  );

  static OutlineInputBorder _createInputBorder(
    double borderRadius,
    double borderWidth,
    Color? borderColor,
  ) => const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(
      width: borderWidth,
      color: borderColor ?? Colors.transparent,
    ),
  );

  static TextStyle _createTextStyle(
    String fontFamily,
    double fontSize, {
    FontWeight? fontWeight,
    Color? fontColor,
  }) => TextStyle().copyWith(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: fontColor,
  );
}
