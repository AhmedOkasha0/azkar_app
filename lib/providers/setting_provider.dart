import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newMode) {
    currentTheme = newMode;
    notifyListeners();
  }

    getMainBackgroundImage() {
      return currentTheme == ThemeMode.light
          ? 'assets/images/background_screen.png'
          : 'assets/images/main_background_dark.png';
    }
  }
