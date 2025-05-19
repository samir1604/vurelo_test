import 'package:flutter/material.dart';

import '../commons.dart';

class AppInputDecorationTheme {
  AppInputDecorationTheme._();

  static double defaultRadius = 24.0;

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(defaultRadius, 1.0, AppColors.borderColor),
    focusedBorder: _createInputBorder(defaultRadius, 1.0, AppColors.primaryColorLight),
    errorBorder: _createInputBorder(defaultRadius, 1.0, AppColors.borderColorError),
    focusedErrorBorder: _createInputBorder(
      defaultRadius,
      2.0,
      AppColors.onAccentColorLight,
    ),
    enabledBorder: _createInputBorder(defaultRadius, 1.0, AppColors.borderColor),
    disabledBorder: _createInputBorder(
      defaultRadius,
      1.0,
      AppColors.borderColor.withValues(alpha: .5),
    ),
    filled: true,
    fillColor: AppColors.surfaceLight,
    labelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySmall,
      fontWeight: FontWeight.w400,
      fontColor: AppColors.onSecondaryColorLight,
    ),
    floatingLabelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelMedium,
      fontColor: AppColors.primaryColorLight,
    ),
    hintStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySmall,
      fontColor: AppColors.midGrey,
    ),
    errorStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelMedium,
      fontColor: AppColors.onAccentColorLight,
      fontWeight: FontWeight.w400,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 14.0,
    ),
    iconColor: AppColors.midGrey,
    alignLabelWithHint: true,
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: _createInputBorder(defaultRadius, 1.0, AppColors.borderColor),
    focusedBorder: _createInputBorder(defaultRadius, 2.0, AppColors.primaryColorDark),
    errorBorder: _createInputBorder(defaultRadius, 1.0, AppColors.borderColorError),
    focusedErrorBorder: _createInputBorder(
      defaultRadius,
      2.0,
      AppColors.onAccentColorDark,
    ),
    enabledBorder: _createInputBorder(defaultRadius, 1.0, AppColors.borderColor),
    disabledBorder: _createInputBorder(
      defaultRadius,
      1.0,
      AppColors.borderColor.withValues(alpha: .5),
    ),
    filled: true,
    fillColor: AppColors.surfaceDark,
    labelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySmall,
      fontWeight: FontWeight.w400,
      fontColor: AppColors.onSecondaryColorDark,
    ),
    floatingLabelStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelMedium,
      fontColor: AppColors.primaryColorDark,
    ),
    hintStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontBodySmall,
      fontColor: AppColors.midGrey,
    ),
    errorStyle: _createTextStyle(
      AppFonts.family,
      AppFonts.fontLabelMedium,
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
