import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 5, 190, 232);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blueAccent,
  Colors.teal,
  Colors.purpleAccent,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}):assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'Selected color index is out of range');
  
  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}