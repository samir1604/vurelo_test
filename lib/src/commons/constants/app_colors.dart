import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color backgroundColorLight = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF7F7F7);
  static const Color primaryColorLight = Color(0xFF2B39AE);
  static const Color onPrimaryColorLight = Color(0xFFFFFFFF);
  static const Color onSecondaryColorLight = Color(0xFF181819);
  static const Color accentColorLight = Color(0xFFF8F1F5);
  static const Color onAccentColorLight = Color(0xFF9D0A0A);
  static const Color disabledColorLight = Color(0xFFA5ABDA);
  static const Color onDisabledColorLight = Color(0xFFFAFAFA);

  static const Color textInputFilled = Color(0xFFF0F1FE);

  static const Color veryDark = Color(0xFF0B0B0B);

  static const Color borderColor = Color(0xFFC3C9FC);
  static const Color borderColorError = Color(0xFFD45050);

  static const Color backgroundColorDark = Color(0xFF121213);
  static const Color surfaceDark = Color(0xFF121213);
  static const Color primaryColorDark = Color(0xFF7C8AFF);
  static const Color onPrimaryColorDark = Color(0xFF121213);
  static const Color onSecondaryColorDark = Color(0xFFF7F7F7);
  static const Color accentColorDark = Color(0xFF181819);
  static const Color onAccentColorDark = Color(0xFFD45050);
  static const Color disabledColorDark = Color(0xFF4E5383);
  static const Color onDisabledColorDark = Color(0xFF232324);


  static const Color circleBorder = Color(0xFFD8DADC);

  static const Color black12 = Colors.black12;
  static const Color midGrey = Color(0xFFAAAAAA);

  static MaterialColor getMaterialColorFromColor(Color color) {
    //TODO: Fix deprecated code

    final int r = color.red;
    final int g = color.green;
    final int b = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
