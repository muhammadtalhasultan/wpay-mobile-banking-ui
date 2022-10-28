// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ThemProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.light;

  void toggleThem(bool isLightTheme) {
    themeMode = isLightTheme ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Mytheme {
  static final darkthem = ThemeData(
      scaffoldBackgroundColor: const Color(0xff002A3C),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff3450A1)),
      primaryColor: Colors.white,
      dividerColor: Colors.black,
      buttonColor: const Color(0xffF2F2F2),
      cardColor: const Color(0xff002A3C),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF00FF)));

  static final lightthem = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    dividerColor: Colors.white,
    buttonColor: const Color(0xff002A3C),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xFF002FFF)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );
}
