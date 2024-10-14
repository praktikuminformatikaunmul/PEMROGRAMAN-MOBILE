import 'package:flutter/material.dart';

class AppTheme {
  // Definisi warna-warna umum untuk Light Theme
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.orange;
  static const Color backgroundColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color buttonColor = Colors.orange;
  static const Color buttonTextColor = Colors.white;
  static const Color textColor = Colors.black;
  static const Color subtitleTextColor = Colors.grey;

  // Definisi warna-warna umum untuk Dark Theme
  static const Color darkPrimaryColor = Colors.black;
  static const Color darkAccentColor = Colors.red;
  static const Color darkBackgroundColor = Color(0xFF121212); // Warna khas latar dark mode
  static const Color darkCardColor = Color(0xFF1E1E1E); // Warna untuk card di dark mode
  static const Color darkButtonColor = Colors.red;
  static const Color darkButtonTextColor = Colors.white;
  static const Color darkTextColor = Colors.white;
  static const Color darkSubtitleTextColor = Colors.grey;

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    hintColor: accentColor,
    scaffoldBackgroundColor: backgroundColor, // Warna latar belakang scaffold
    cardColor: cardColor, // Warna latar belakang card

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primaryColor, // Warna AppBar
      titleTextStyle: TextStyle(
        color: buttonTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: buttonTextColor), // Warna ikon di AppBar
    ),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: subtitleTextColor,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: buttonTextColor,
      ),
    ),

    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: buttonTextColor, backgroundColor: buttonColor, // Warna teks pada tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Bentuk tombol
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Padding tombol
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      color: cardColor,
      shadowColor: Colors.grey.withOpacity(0.5),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 24,
    ),

    // Input Decoration Theme (untuk TextField)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[200], // Warna background TextField
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: primaryColor),
      ),
      labelStyle: const TextStyle(
        color: primaryColor,
      ),
      hintStyle: const TextStyle(
        color: subtitleTextColor,
      ),
    ),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: buttonColor, // Warna tombol FAB
      foregroundColor: buttonTextColor, // Warna ikon di FAB
  ),
);

  // Dark Theme (tema dark mode yang lebih detail)
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    hintColor: darkAccentColor,
    scaffoldBackgroundColor: darkBackgroundColor, // Warna latar belakang scaffold

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: darkPrimaryColor, // Warna AppBar untuk dark mode
      titleTextStyle: TextStyle(
        color: darkButtonTextColor, // Warna teks di AppBar
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: darkButtonTextColor, // Warna ikon di AppBar
      ),
    ),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: darkTextColor, // Teks besar untuk dark mode
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: darkTextColor, // Warna teks yang lebih besar
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: darkTextColor, // Warna teks umum untuk dark mode
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: darkSubtitleTextColor, // Teks subtitle lebih abu-abu
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: darkButtonTextColor, // Warna teks pada tombol
      ),
    ),

    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: darkButtonTextColor, backgroundColor: darkButtonColor, // Warna teks pada tombol
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    // Card Theme
    cardTheme: CardTheme(
      color: darkCardColor, // Warna card untuk dark mode
      shadowColor: Colors.black.withOpacity(0.3), // Bayangan lebih redup
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: darkTextColor, // Warna ikon dalam dark mode
      size: 24,
    ),

    // Input Decoration Theme (untuk TextField)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[800], // Warna background TextField untuk dark mode
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: darkAccentColor), // Border warna saat fokus
      ),
      labelStyle: const TextStyle(
        color: darkAccentColor, // Warna label saat fokus
      ),
      hintStyle: const TextStyle(
        color: darkSubtitleTextColor, // Warna hint untuk dark mode
      ),
    ),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: darkButtonColor, // Warna FAB untuk dark mode
      foregroundColor: darkButtonTextColor, // Warna ikon pada FAB
    ), 
  );
}
