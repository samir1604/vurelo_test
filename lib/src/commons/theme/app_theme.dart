import 'package:flutter/material.dart';
import '../commons.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppFonts.family,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColorLight,
    scaffoldBackgroundColor: AppColors.backgroundColorLight,
    colorScheme: AppColorScheme.lightScheme,
    primarySwatch: AppColors.getMaterialColorFromColor(
      AppColors.primaryColorLight,
    ),
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: AppThemeBar.lightAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppFonts.family,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    colorScheme: AppColorScheme.darkScheme,
    primarySwatch: AppColors.getMaterialColorFromColor(
      AppColors.primaryColorDark,
    ),
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: AppThemeBar.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AppInputDecorationTheme.darkInputDecorationTheme,
  );
}
