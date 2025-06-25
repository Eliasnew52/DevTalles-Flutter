import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 28, 191, 206);

const List<Color> _colorThemes = [
  _customColor,
  Color.fromARGB(255, 25, 119, 195),
  Color.fromARGB(255, 91, 244, 96),
  Color.fromARGB(255, 169, 243, 133),
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0}) : assert(selectedColor>=0 && selectedColor <= _colorThemes.length, 'Color index must be between 0 and ${_colorThemes.length -1}');
        


  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark,
    );
  }
}