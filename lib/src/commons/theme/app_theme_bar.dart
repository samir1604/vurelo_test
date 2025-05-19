import 'package:flutter/material.dart';

import '../commons.dart';

class AppThemeBar {
  AppThemeBar._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceLight,
    foregroundColor: AppColors.primaryColorLight,
    titleTextStyle: TextStyle(
      fontSize: AppFonts.fontBodyMedium,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColorLight,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceDark,
    foregroundColor: AppColors.onPrimaryColorLight,
    titleTextStyle: TextStyle(
      fontSize: AppFonts.fontBodyMedium,
      fontWeight: FontWeight.w500,
      color: AppColors.onPrimaryColorDark,
    ),
  );
}