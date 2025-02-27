import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/color_constant.dart';

ColorScheme lightColorScheme = ColorScheme.light(
  surface: BackgroundColor.white, // lightest // done
  primary: TextColor.darkBlue, // for text (say) // done
  secondary: Colors.black, // 4th // done
  tertiary: Colors.black, // same for both modes // done
  inversePrimary: Colors.black, // darkest
  primaryFixed: Colors.black, // done
  primaryFixedDim: Colors.black,
  secondaryFixed: Colors.black,
  secondaryFixedDim: Colors.black,
  tertiaryFixed: Colors.black,
);

ThemeData lightMode = ThemeData(
  fontFamily: GoogleFonts.quicksand().fontFamily, // does not work
  colorScheme: ColorScheme.light(
      surface: lightColorScheme.surface, // lightest // for background
      tertiary: lightColorScheme.tertiary, // 2nd lightest
      primary: lightColorScheme.primary, // 3rd
      secondary: lightColorScheme.secondary, // 4th
      inversePrimary: lightColorScheme.inversePrimary, // darkest
      primaryFixed: lightColorScheme.primaryFixed,
      primaryFixedDim: lightColorScheme.primaryFixedDim,
      secondaryFixed: lightColorScheme.secondaryFixed,
      secondaryFixedDim: lightColorScheme.secondaryFixedDim,
      tertiaryFixed: lightColorScheme.tertiaryFixed,
      error: Colors.red),
  // cardColor: BackgroundColor.lightWhite,
  scaffoldBackgroundColor: lightColorScheme.surface,
  textTheme: Typography.material2021().black.copyWith(
        //https://api.flutter.dev/flutter/material/TextTheme-class.html
        displayLarge: TextStyle(
          //size 57
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        displayMedium: TextStyle(
          //size 45
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        displaySmall: TextStyle(
          //size 36
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineLarge: TextStyle(
          // size 32
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineMedium: TextStyle(
          // size 28
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        headlineSmall: TextStyle(
          // size 24
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        titleLarge: TextStyle(
          // size 22
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        titleMedium: TextStyle(
            // size 16
            // fontSize: 36, //done // don't change
            fontFamily: GoogleFonts.quicksand().fontFamily,
            height: 1.2),
        titleSmall: TextStyle(
          // size 14
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        bodyLarge: TextStyle(
            // size 16
            // fontSize: 18, // done // don't change
            fontFamily: GoogleFonts.quicksand().fontFamily,
            height: 1.2),
        bodyMedium: TextStyle(
          // size 14
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        bodySmall: TextStyle(
          // size 12
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelLarge: TextStyle(
          // size 14
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelMedium: TextStyle(
          // size 12
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
        labelSmall: TextStyle(
          // size 11
          fontFamily: GoogleFonts.quicksand().fontFamily,
        ),
      ),
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(color: lightColorScheme.primary, fontSize: 24),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontFamily: GoogleFonts.quicksand().fontFamily,
      color: Colors.black,
      fontSize: 18,
    ),
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
  datePickerTheme: DatePickerThemeData(
    backgroundColor: Colors.white,
    headerBackgroundColor: Colors.blue,
    dividerColor: Colors.blue,
    dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue; // Blue background for the selected date
      }
      return null; // Use default for unselected dates
    }),
    dayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white; // White text for the selected date
      }
      return null; // Use default for unselected dates
    }),

    // dayBackgroundColor: WidgetStateProperty.all(Colors.cyanAccent), // all days background
    // dayForegroundColor: WidgetStateProperty.all(Colors.green), // all days text
    // dayOverlayColor: WidgetStateProperty.all(Colors.red), // today border ?
    // todayForegroundColor: WidgetStateProperty.all(Colors.orange), // today text

    // confirmButtonStyle: ButtonStyle(
    //     padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 10.w)),
    //     minimumSize: WidgetStateProperty.all(
    //       Size(120.w, 40.h),
    //     ),
    //     textStyle: WidgetStateProperty.all(
    //       const TextStyle(fontWeight: FontWeight.w500, color: TextColor.white, fontFamily: 'Inter', fontSize: 16),
    //     ),
    //     backgroundColor: WidgetStatePropertyAll(ButtonColor.orange),
    //     foregroundColor: WidgetStatePropertyAll(TextColor.white),
    //     shape: WidgetStateProperty.all(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(100),
    //         side: const BorderSide(color: BorderColor.orange),
    //       ),
    //     )),
    // cancelButtonStyle: ButtonStyle(
    //     padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 10.w)),
    //     minimumSize: WidgetStateProperty.all(
    //       Size(120.w, 40.h),
    //     ),
    //     textStyle: WidgetStateProperty.all(
    //       const TextStyle(fontWeight: FontWeight.w500, color: TextColor.white, fontFamily: 'Inter', fontSize: 16),
    //     ),
    //     backgroundColor: WidgetStatePropertyAll(Colors.transparent),
    //     foregroundColor: WidgetStatePropertyAll(TextColor.orange),
    //     shape: WidgetStateProperty.all(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(100),
    //         side: const BorderSide(color: BorderColor.orange),
    //       ),
    //     )),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0), // Custom border radius
    ),
    // dayOverlayColor: WidgetStateProperty.all(IconColor.orange),
  ),
);
