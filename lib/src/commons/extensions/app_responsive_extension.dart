import 'dart:math';

import 'package:flutter/material.dart';

extension AppResponsiveExtension on BuildContext {
  MediaQueryData get _mediaQuery => MediaQuery.of(this);

  /// Devuelve el ancho de la pantalla en píxeles.
  double get width => _mediaQuery.size.width;

  /// Devuelve la altura de la pantalla en píxeles.
  double get height => _mediaQuery.size.height;

  /// Devuelve la diagonal de la pantalla en píxeles.
  double get diagonal => sqrt(pow(width, 2) + pow(height, 2));

  /// Devuelve el tamaño de la pantalla como una instancia de `Size`.
  Size get size => _mediaQuery.size;

  /// Calcula el tamaño de un bloque horizontal de la pantalla.
  /// Divide el ancho de la pantalla por 100.
  double get _blockSizeHorizontal => width / 100;

  /// Calcula el tamaño de un bloque vertical de la pantalla.
  /// Divide la altura de la pantalla por 100.
  double get _blockSizeVertical => height / 100;

  /// Suma los padding horizontales de la pantalla (izquierda y derecha).
  double get _safeAreaHorizontal =>
      _mediaQuery.padding.left + _mediaQuery.padding.right;

  /// Suma los padding verticales de la pantalla (arriba y abajo).
  double get _safeAreaVertical =>
      _mediaQuery.padding.top + _mediaQuery.padding.bottom;

  /// Calcula el tamaño de un bloque horizontal en el area segura de la pantalla.
  /// Divide el ancho del area segura por 100.
  double get _safeBlockHorizontal => (width - _safeAreaHorizontal) / 100;

  /// Calcula el tamaño de un bloque vertical en el area segura de la pantalla.
  /// Divide la altura del area segura por 100.
  double get _safeBlockVertical => (height - _safeAreaVertical) / 100;

  /// Calcula el tamaño horizontal para un porcentaje dado de la pantalla.
  /// [percentage] Porcentaje del ancho de la pantalla a calcular
  double blockSizeHorizontal(double percentage) =>
      _blockSizeHorizontal * percentage;

  /// Calcula el tamaño vertical para un porcentaje dado de la pantalla.
  /// [percentage] Porcentaje de la altura de la pantalla a calcular.
  double blockSizeVertical(double percentage) =>
      _blockSizeVertical * percentage;

  /// Calcula el tamaño horizontal para un porcentaje dado en el area segura de la pantalla.
  /// [percentage] Porcentaje del ancho del area segura de la pantalla a calcular.
  double safeBlockSizeHorizontal(double percentage) =>
      _safeBlockHorizontal * percentage;

  /// Calcula el tamaño vertical para un porcentaje dado en el area segura de la pantalla.
  /// [percentage] Porcentaje de la altura del area segura de la pantalla a calcular.
  double safeBlockSizeVertical(double percentage) =>
      _safeBlockVertical * percentage;
}