import 'package:flutter/material.dart';

//asignando color personalizado
const Color _customColor = Color(0xff95119f);
const List<Color> _colorTemas = [
  _customColor,
  Colors.teal,
  Colors.red,
  Colors.orange,
  Colors.lightBlue,
  Colors.blueGrey,
  Colors.green,
];

class AppTheme {
  final int selectorColor;

  AppTheme(
      {
      //puede ir asi required this.selectorColor
      this.selectorColor = 2})
      : assert(selectorColor >= 0 && selectorColor <= _colorTemas.length - 1,
            'the thema must be between 0 and ${_colorTemas.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemas[selectorColor],
      //cambiar color oscuro
      //brightness: Brightness.dark
    );
  }
}
