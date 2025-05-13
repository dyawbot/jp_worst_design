// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jp_worst_design/src/src.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  ThemeManager() {
    _loadTheme();
  }

  void toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    _saveTheme();
    _applySystemUIOverlayStyle();
    notifyListeners();
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    _applySystemUIOverlayStyle();
    notifyListeners();
  }

  void _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', _themeMode == ThemeMode.dark);
  }

  void _applySystemUIOverlayStyle() {
    final isDark = _themeMode == ThemeMode.dark;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark
          ? Colors.black
          : AppColors.darkNavyBllue.withAlpha(255) // Status bar color
      ,
      systemNavigationBarColor: isDark
          ? Colors.black
          : AppColors.darkNavyBllue.withAlpha(255) // Status bar color
      ,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarIconBrightness:
          isDark ? Brightness.light : Brightness.dark,
    ));
  }
}
