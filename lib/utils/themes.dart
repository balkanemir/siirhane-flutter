import 'package:flutter/material.dart';
import 'package:siirhane/utils/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Themes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundBlack,
    primaryColor: primaryPurpleDark,
    colorScheme: ColorScheme.light(),
    canvasColor: backgroundWhite,
  );

    static final lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundWhite,
    primaryColor: primaryPurple,
    colorScheme: ColorScheme.light(),
    canvasColor: backgroundBlack,
  );
}