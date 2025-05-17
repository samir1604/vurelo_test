import 'package:flutter/material.dart';

import '../commons.dart';

class AppThemeBar {
  AppThemeBar._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceLight,
    foregroundColor: AppColors.onPrimaryColorLight,
    iconTheme: IconThemeData(color: AppColors.onPrimaryColorLight),
    actionsIconTheme: IconThemeData(color: AppColors.onPrimaryColorLight),
    titleTextStyle: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.w500,
      color: AppColors.onPrimaryColorLight,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.surfaceDark,
    foregroundColor: AppColors.onPrimaryColorLight,
    iconTheme: IconThemeData(color: AppColors.onPrimaryColorLight),
    actionsIconTheme: IconThemeData(color: AppColors.onPrimaryColorLight),
    titleTextStyle: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.w500,
      color: AppColors.onPrimaryColorDark,
    ),
  );
}