import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF000000),
    secondary: Color(0xFF000000),
    tertiary: Color(0xFF000000),
    surface: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFFFFE9C8),
    onPrimary: Color(0xFFFFCC80),
  ),
);


ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFD8D8D8),
    secondary: Color.fromARGB(159, 216, 216, 216),
    tertiary: Color(0xFFFFFFFF),
    surface: Color(0xFF000000),
    onPrimaryContainer: Color(0xFF191A46),
    onPrimary: Color(0xFF323F97),
  ),
);