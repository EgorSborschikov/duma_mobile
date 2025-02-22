import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Основная тема для Android
ThemeData androidTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16.0),
    ),
    // Дополнительные стили для Android
  );
}

// Основная тема для iOS
CupertinoThemeData iosTheme(BuildContext context) {
  return CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: CupertinoColors.activeBlue,
    textTheme: CupertinoTextThemeData(
      primaryColor: CupertinoColors.black,
      textStyle: TextStyle(fontSize: 16.0),
    ),
    // Дополнительные стили для iOS
  );
}

// Темная тема для Android
ThemeData androidDarkTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white70),
    ),
    // Дополнительные стили для темной темы Android
  );
}

// Темная тема для iOS
CupertinoThemeData iosDarkTheme(BuildContext context) {
  return CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: CupertinoColors.darkBackgroundGray,
    textTheme: CupertinoTextThemeData(
      primaryColor: CupertinoColors.white,
      textStyle: TextStyle(fontSize: 16.0, color: CupertinoColors.white),
    ),
    // Дополнительные стили для темной темы iOS
  );
}
