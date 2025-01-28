import 'package:flutter/material.dart';

class JPStyles {
  static const TextStyle headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2B2B2B),
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFF2B2B2B),
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Color(0xFF2B2B2B),
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xFF2B2B2B),
  );

  static const TextStyle bodyText3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Color(0xFF2B2B2B),
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // For use in themes
  static TextTheme textTheme = const TextTheme(
    headlineLarge: headline1,
    headlineMedium: headline2,
    headlineSmall: bodyText1,
    bodyLarge: bodyText2,
    bodyMedium: bodyText3,
    // labelLarge: button,
  );
}
