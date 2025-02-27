import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorScheme darkColorScheme = ColorScheme.dark(
  surface: Colors.black,
  primary: Colors.black,
  secondary: Colors.black,
  tertiary: Colors.black,
  inversePrimary: Colors.black,
  primaryFixed: Colors.black,
  primaryFixedDim: Colors.black,
  secondaryFixed: Colors.black,
  tertiaryFixed: Colors.black,
);

ThemeData darkMode = ThemeData(
  fontFamily: GoogleFonts.quicksand().fontFamily,
  colorScheme: ColorScheme.dark(
      surface: darkColorScheme.surface,
      primary: darkColorScheme.primary,
      secondary: darkColorScheme.secondary,
      tertiary: darkColorScheme.tertiary,
      inversePrimary: darkColorScheme.inversePrimary,
      primaryFixed: darkColorScheme.primaryFixed,
      primaryFixedDim: darkColorScheme.primaryFixedDim,
      secondaryFixed: darkColorScheme.secondaryFixed,
      secondaryFixedDim: darkColorScheme.secondaryFixedDim,
      tertiaryFixed: darkColorScheme.tertiaryFixed),
  // cardColor: BackgroundColor.greyCard,
  scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
  textTheme: Typography.material2021().white.copyWith(
        titleLarge: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        titleMedium: TextStyle(
          // fontSize: 36, //done // don't change
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        titleSmall: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineLarge: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineMedium: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineSmall: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        bodyLarge: TextStyle(
          // fontSize: 18, // done // don't change
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        bodyMedium: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        bodySmall: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelLarge: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelMedium: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelSmall: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        displayLarge: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        displayMedium: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        displaySmall: TextStyle(
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
      ),
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    titleTextStyle: TextStyle(color: darkColorScheme.primary, fontSize: 24),
  ),
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      color: Colors.red,
      fontSize: 12,
    ),
    errorMaxLines: 4,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.all(10),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 0.5,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 0.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);
