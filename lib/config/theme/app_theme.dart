import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _coloresTheme = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;

    AppTheme({
      this.selectedColor = 0,
    }):assert(selectedColor >= 0 && selectedColor <= _coloresTheme.length - 1, 'No se encunetra ese color, debe ser entre 0 y ${_coloresTheme.length - 1}');
  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _coloresTheme[selectedColor]);
  }
}
