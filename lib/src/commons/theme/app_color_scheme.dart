import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static ColorScheme lightScheme = ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.primaryColorLight,
      onPrimary: AppColors.onPrimaryColorLight,
      secondary: AppColors.onSecondaryColorLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSecondaryColorLight);

  static ColorScheme darkScheme = ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColors.primaryColorDark,
      onPrimary: AppColors.onPrimaryColorDark,
      secondary: AppColors.onSecondaryColorDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.onSecondaryColorDark);
}