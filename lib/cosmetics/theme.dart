import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Colors.blue.shade300,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => Colors.blue),
      foregroundColor:
          MaterialStateProperty.resolveWith((states) => Colors.white),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.orange,
  primaryColor: Colors.orange.shade900,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.orange.shade900),
        foregroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.white)),
  ),
);
