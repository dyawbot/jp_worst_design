// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:jp_worst_design/src/utils/typography.dart';
import 'colors.dart';

class JPTheme {
  static ThemeData lightTheme = ThemeData(
      // primarySwatch: MaterialColor(0xFF5897EE, swatch),
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      textTheme: JPLightStyles.textThemeLight,
      buttonTheme: const ButtonThemeData(buttonColor: AppColors.button),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkNavyBllue,
        foregroundColor: AppColors.textOnSurface,
        elevation: 4.0, // For shadow if needed, you can adjust the value
        iconTheme: IconThemeData(color: AppColors.textOnSurface),
        actionsIconTheme: IconThemeData(color: AppColors.textOnSurface),
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarColor: AppColors.appStatusColor,
        //   statusBarIconBrightness: Brightness.light,
        //   systemNavigationBarColor: AppColors.appStatusColor,
        //   systemNavigationBarIconBrightness: Brightness.dark,
        // ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: AppColors.primary),
          )),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.blue), // Text color
        backgroundColor:
            MaterialStateProperty.all(Colors.transparent), // Background color
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 18, vertical: 8)), // Padding
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
          ),
        ),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white, // Default button color
          foregroundColor: AppColors.primary, // Default text/icon color
        ),
      ),
      expansionTileTheme: ExpansionTileThemeData(
        tilePadding: const EdgeInsets.all(8),
        textColor: AppColors.textPrimary,
        collapsedTextColor: AppColors.textPrimary,
        collapsedBackgroundColor: AppColors.widgetBackground,
        collapsedIconColor: AppColors.blackLightPrimary,
        iconColor: Colors.grey.shade700,
        backgroundColor: AppColors.widgetBackground,
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          primaryContainer: AppColors.widgetBackground,
          onPrimary: AppColors.textPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.textOnPrimary,
          error: AppColors.error,
          onError: AppColors.error,
          surface: AppColors.widgetBackground,
          onSurface: AppColors.widgetBackground,
          surfaceContainer: AppColors.widgetBackground));

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
