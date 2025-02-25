import 'package:flutter/material.dart';

class AppTheme {
  static final Color _primaryNeonYellow = Color(0xff3CED78);
  static final Color _secondaryNeonYellow = Color(0xffEDF2F6);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: _primaryNeonYellow,
    scaffoldBackgroundColor: Colors.white,
    secondaryHeaderColor: Colors.white.withOpacity(0.25),
    colorScheme: ColorScheme.light(
      primary: _primaryNeonYellow,
      secondary: _secondaryNeonYellow,
      tertiary: Color(0xFF2D2D2D),
      surface: Colors.white,
      error: Colors.redAccent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Color(0xFF2D2D2D),
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xFF2D2D2D),
        fontWeight: FontWeight.bold,
        fontFamily: "Gilroy",
      ),
      headlineMedium: TextStyle(
        color: Color(0xFF2D2D2D),
        fontWeight: FontWeight.w600,
        fontFamily: "Gilroy",
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF2D2D2D),
        fontFamily: "Gilroy",
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF2D2D2D),
        fontFamily: "Gilroy",
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryNeonYellow,
        foregroundColor: Color(0xFF2D2D2D),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 128, 127, 127),
    scaffoldBackgroundColor: Color.fromARGB(255, 59, 57, 57),
    secondaryHeaderColor:
        const Color.fromARGB(255, 44, 41, 41).withOpacity(0.25),
    colorScheme: ColorScheme.dark(
      primary: const Color.fromARGB(255, 128, 127, 127),
      secondary: _secondaryNeonYellow,
      tertiary: Colors.white,
      surface: Color(0xFF1E1E1E),
      error: Colors.redAccent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Color(0xFF1E1E1E),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Gilroy",
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: "Gilroy",
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontFamily: "Gilroy",
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontFamily: "Gilroy",
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryNeonYellow,
        foregroundColor: Color(0xFF2D2D2D),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
