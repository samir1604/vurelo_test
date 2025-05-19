import 'package:flutter/material.dart';
import 'package:vurelo_test_app/src/commons/commons.dart';

class AppStyles {

  static TextStyle unfilledButtonText(bool isDarkMode) => TextStyle(
    fontFamily: AppFonts.family,
    fontSize: 16.0,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color:
        isDarkMode ? AppColors.primaryColorDark : AppColors.primaryColorLight,
  );

  static TextStyle smallText(bool isDarkMode) => TextStyle(
    fontFamily: AppFonts.family,
    fontSize: 14.0,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color:
        isDarkMode ? AppColors.primaryColorDark : AppColors.primaryColorLight,
  );

  static OutlineInputBorder get phoneBorder => OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.borderColor,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.zero,
      bottomLeft: Radius.zero,
      topRight: Radius.circular(24.0),
      bottomRight: Radius.circular(24.0),
    ),
  );
}
