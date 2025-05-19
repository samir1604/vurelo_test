import 'package:flutter/material.dart';

import '../commons.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: Colors.transparent,
          side: BorderSide(color: AppColors.primaryColorLight),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
          states.contains(WidgetState.disabled)
              ? AppColors.disabledColorLight
              : AppColors.primaryColorLight),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
          states.contains(WidgetState.disabled)
              ? AppColors.onDisabledColorLight
              : AppColors.onPrimaryColorLight),
          elevation: 2.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: AppFonts.fontBodySmall, fontWeight: FontWeight.w600, height: 1.2),
          overlayColor: WidgetStateColor.resolveWith(
                (states) => states.contains(WidgetState.pressed)
                ? AppColors.black12
                : Colors.transparent,
          )));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          enabledMouseCursor: SystemMouseCursors.click,
          shadowColor: AppColors.disabledColorDark,
          side: BorderSide(color: AppColors.primaryColorDark),
          backgroundColor: WidgetStateColor.resolveWith((states) =>
          states.contains(WidgetState.disabled)
              ? AppColors.disabledColorDark
              : AppColors.primaryColorDark),
          foregroundColor: WidgetStateColor.resolveWith((states) =>
          states.contains(WidgetState.disabled)
              ? AppColors.onDisabledColorDark
              : AppColors.onPrimaryColorDark),
          elevation: 2.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          textStyle: const TextStyle(
              fontSize: AppFonts.fontBodySmall, fontWeight: FontWeight.w600),
          overlayColor: WidgetStateColor.resolveWith(
                (states) => states.contains(WidgetState.pressed)
                ? AppColors.black12
                : Colors.transparent,
          )));
}