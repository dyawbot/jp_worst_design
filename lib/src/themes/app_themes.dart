import 'package:flutter/material.dart';
import 'package:jp_worst_design/src/utils/typography.dart';
import 'colors.dart';

class JPTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.surface,
      textTheme: JPLightStyles.textThemeLight,
      buttonTheme: const ButtonThemeData(buttonColor: AppColors.button),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: AppColors.primary),
          )),
      colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          onPrimary: AppColors.textPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.textOnPrimary,
          error: AppColors.error,
          onError: AppColors.error,
          surface: AppColors.surfaceDark,
          onSurface: AppColors.surfaceDark,
          surfaceContainer: AppColors.surfaceContainer));

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.surfaceDark,
    textTheme: JPDarkStyles.textThemeDark,
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.buttonDark),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.textOnPrimary,
    ),
    colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: AppColors.blackPrimary,
        onPrimary: AppColors.textOnPrimary,
        secondary: AppColors.blackComplementary,
        onSecondary: AppColors.textOnPrimary,
        error: AppColors.error,
        onError: AppColors.textOnPrimary,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textOnSurface),
  );
}

//THIS IS PURE BLACK THEMES
class JPDarkTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackPrimary,
    textTheme: JPLightStyles.textThemeLight,
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.button),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blackPrimary,
      foregroundColor: AppColors.textOnPrimary,
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.blackPrimary,
        onPrimary: AppColors.textOnPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.textOnPrimary,
        error: AppColors.error,
        onError: AppColors.textOnPrimary,
        surface: AppColors.surface,
        onSurface: AppColors.blackOnSurface),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.surfaceDark,
    textTheme: JPDarkStyles.textThemeDark,
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.buttonDark),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.textOnPrimary,
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.blackDarkPrimary,
        onPrimary: AppColors.textOnPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.textOnPrimary,
        error: AppColors.error,
        onError: AppColors.textOnPrimary,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textOnSurface),
  );
}
