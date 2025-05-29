import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get standard {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 172, 179, 224), 
      dialogBackgroundColor: Colors.white,
      cardColor: const Color(0xFFE3E6F1), 
      canvasColor: Colors.grey.shade200,
      appBarTheme: _appBarTheme,
      popupMenuTheme: _popupMenuTheme,
      hintColor: Colors.grey,
      focusColor: Colors.deepPurple,
      primaryIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Color(0xFF5D5FEF)), 
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Header',
            color: Colors.black),
        titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontFamily: 'Header',
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Header',
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(
            color: Colors.black, fontSize: 11, fontWeight: FontWeight.normal),
        headlineLarge: TextStyle(
            color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(fontSize: 14, color: Colors.grey),
        displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Header',
            color: Colors.black),
        displayMedium: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(backgroundColor:  Color.fromARGB(255, 172, 179, 224)); // Azul/morado
  }

  static PopupMenuThemeData get _popupMenuTheme {
    return const PopupMenuThemeData(color: Colors.white);
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF121212), // Muy oscuro
      dialogBackgroundColor: const Color(0xFF1F1B24), // Morado oscuro
      cardColor: const Color(0xFF2D2A3C),
      canvasColor: Colors.black,
      appBarTheme: _appBarThemeDark,
      popupMenuTheme: _popupMenuThemeDark,
      focusColor: Colors.lightBlueAccent,
      primaryIconTheme: const IconThemeData(color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.lightBlueAccent),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Header',
            color: Colors.white),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Header',
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontFamily: 'Header',
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: Colors.white),
        headlineLarge: TextStyle(
            color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(fontSize: 14, color: Colors.grey),
        displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Header',
            color: Colors.white),
        displayMedium: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  static AppBarTheme get _appBarThemeDark {
    return const AppBarTheme(
      backgroundColor: Color(0xFF1F1B24),
    );
  }

  static PopupMenuThemeData get _popupMenuThemeDark {
    return const PopupMenuThemeData(
      color: Color(0xFF2D2A3C),
    );
  }
}
