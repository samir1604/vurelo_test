import 'package:flutter/material.dart';

extension AppSystemExtension on BuildContext {
  bool get isSystemDarkMode => MediaQuery.of(this).platformBrightness == Brightness.dark;
}