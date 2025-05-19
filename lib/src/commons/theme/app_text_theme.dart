import 'package:flutter/material.dart';
import 'package:vurelo_test_app/src/commons/constants/app_fonts.dart';

import '../constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.ppFont,
      fontSize: AppFonts.fontDisplayLarge,
      fontWeight: FontWeight.w700,
      height: 1.1,
      color: AppColors.veryDark,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.ppFont,
      fontSize: AppFonts.fontDisplayMedium,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: AppColors.onSecondaryColorLight,
    ),
    displaySmall: TextStyle(
      fontSize: AppFonts.fontDisplaySmall,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineLarge: TextStyle(
      fontSize: AppFonts.fontHeadLineLarge,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineMedium: TextStyle(
      fontSize: AppFonts.fontHeadLineMedium,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    headlineSmall: TextStyle(
      fontSize: AppFonts.fontHeadLineSmall,
      color: AppColors.onPrimaryColorLight,
    ),
    titleLarge: TextStyle(
      fontSize: AppFonts.fontTitleLarge,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorLight,
    ),
    titleMedium: TextStyle(
      fontSize: AppFonts.fontTitleMedium,
      color: AppColors.onPrimaryColorLight,
    ),
    titleSmall: TextStyle(
      fontSize: AppFonts.fontTitleSmall,
      color: AppColors.onPrimaryColorLight,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontBodyLarge,
      color: AppColors.onSecondaryColorLight,
      fontWeight: FontWeight.w400,
      height: 1.2,
    ),
    bodyMedium: TextStyle(
      fontSize: AppFonts.fontLabelMedium,
      color: AppColors.onSecondaryColorLight,
    ),
    bodySmall: TextStyle(
      fontSize: AppFonts.fontLabelSmall,
      color: AppColors.onSecondaryColorLight,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontLabelLarge,
      fontWeight: FontWeight.w600,
      color: AppColors.onPrimaryColorLight,
      height: 1.2,
    ),
    labelMedium: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontLabelMedium,
      color: AppColors.onSecondaryColorLight,
      fontWeight: FontWeight.w400,
      height: 1.2,
    ),
    labelSmall: TextStyle(
      fontSize: AppFonts.fontLabelSmall,
      color: AppColors.onSecondaryColorLight,
      fontWeight: FontWeight.w400,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: AppFonts.ppFont,
      fontSize: AppFonts.fontDisplayLarge,
      fontWeight: FontWeight.w700,
      height: 1.1,
      color: AppColors.onSecondaryColorDark,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.ppFont,
      fontSize: AppFonts.fontDisplayMedium,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: AppColors.onSecondaryColorDark,
    ),
    displaySmall: TextStyle(
      fontSize: AppFonts.fontDisplaySmall,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineLarge: TextStyle(
      fontSize: AppFonts.fontHeadLineLarge,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineMedium: TextStyle(
      fontSize: AppFonts.fontHeadLineMedium,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    headlineSmall: TextStyle(
      fontSize: AppFonts.fontHeadLineSmall,
      color: AppColors.onPrimaryColorDark,
    ),
    titleLarge: TextStyle(
      fontSize: AppFonts.fontTitleLarge,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimaryColorDark,
    ),
    titleMedium: TextStyle(
      fontSize: AppFonts.fontTitleMedium,
      color: AppColors.onPrimaryColorDark,
    ),
    titleSmall: TextStyle(
      fontSize: AppFonts.fontTitleSmall,
      color: AppColors.onPrimaryColorDark,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontBodyLarge,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: AppColors.onSecondaryColorDark,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontBodyMedium,
      color: AppColors.onSecondaryColorDark,
    ),
    bodySmall: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontBodySmall,
      color: AppColors.onSecondaryColorDark,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontLabelLarge,
      fontWeight: FontWeight.w600,
      color: AppColors.onPrimaryColorDark,
      height: 1.2,
    ),
    labelMedium: TextStyle(
      fontFamily: AppFonts.family,
      fontSize: AppFonts.fontLabelMedium,
      color: AppColors.onSecondaryColorLight,
      fontWeight: FontWeight.w400,
      height: 1.2,
    ),
    labelSmall: TextStyle(
      fontSize: AppFonts.fontLabelSmall,
      color: AppColors.onSecondaryColorDark,
    ),
  );
}
