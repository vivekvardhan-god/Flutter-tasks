import 'package:flutter/material.dart';

class themes{
  static final ThemeData theme = ThemeData(
    fontFamily: 'Itim',
    primaryColor: const Color.fromRGBO(43, 53, 103, 1),
    useMaterial3: true,

    textTheme: const TextTheme(
      bodySmall: TextStyle(fontFamily: 'Itim'),
      bodyMedium: TextStyle(fontFamily: 'Itim'),
      bodyLarge: TextStyle(fontFamily: 'Itim'))
      .apply(
      bodyColor: const Color.fromRGBO(43, 52, 103, 1),
      displayColor: const Color.fromRGBO(43, 52, 103, 1),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(43, 52, 103, 1),
      titleTextStyle: TextStyle(
        color:Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'Itim',
        fontSize: 25),
    iconTheme: IconThemeData(color:Colors.white)));
}