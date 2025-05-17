import 'package:flutter/material.dart';
import 'package:vurelo_test_app/src/commons/constants/app_fonts.dart';

import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: AppFonts.fontTitleH1,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    displayMedium: TextStyle(
      fontSize: AppFonts.fontTitleH2,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    displaySmall: TextStyle(
      fontSize: AppFonts.fontTitleH3,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineLarge: TextStyle(
      fontSize: AppFonts.fontTitleH3,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineMedium: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineSmall: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      color: AppColors.onPrimaryColorLight,
    ),
    titleLarge: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    titleMedium: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onPrimaryColorLight,
    ),
    titleSmall: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onPrimaryColorLight,
    ),
    bodyLarge: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onSecondaryColorLight,
    ),
    bodyMedium: TextStyle(
      fontSize: AppFonts.fontLabelXS,
      color: AppColors.onSecondaryColorLight,
    ),
    bodySmall: TextStyle(
      fontSize: AppFonts.fontLabelXXS,
      color: AppColors.onSecondaryColorLight,
    ),
    labelLarge: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onSecondaryColorLight,
    ),
    labelMedium: TextStyle(
      fontSize: AppFonts.fontLabelXS,
      color: AppColors.onSecondaryColorLight,
    ),
    labelSmall: TextStyle(
      fontSize: AppFonts.fontLabelXXS,
      color: AppColors.onSecondaryColorLight,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: AppFonts.fontTitleH1,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    displayMedium: TextStyle(
      fontSize: AppFonts.fontTitleH2,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    displaySmall: TextStyle(
      fontSize: AppFonts.fontTitleH3,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineLarge: TextStyle(
      fontSize: AppFonts.fontTitleH3,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineMedium: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineSmall: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      color: AppColors.onPrimaryColorDark,
    ),
    titleLarge: TextStyle(
      fontSize: AppFonts.fontBodyMD,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    titleMedium: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onPrimaryColorDark,
    ),
    titleSmall: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onPrimaryColorDark,
    ),
    bodyLarge: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onSecondaryColorDark,
    ),
    bodyMedium: TextStyle(
      fontSize: AppFonts.fontLabelXS,
      color: AppColors.onSecondaryColorDark,
    ),
    bodySmall: TextStyle(
      fontSize: AppFonts.fontLabelXXS,
      color: AppColors.onSecondaryColorDark,
    ),
    labelLarge: TextStyle(
      fontSize: AppFonts.fontBodySM,
      color: AppColors.onSecondaryColorDark,
    ),
    labelMedium: TextStyle(
      fontSize: AppFonts.fontLabelXS,
      color: AppColors.onSecondaryColorDark,
    ),
    labelSmall: TextStyle(
      fontSize: AppFonts.fontLabelXXS,
      color: AppColors.onSecondaryColorDark,
    ),
  );
}
