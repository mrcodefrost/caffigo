import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/color_constant.dart';

ColorScheme lightColorScheme = ColorScheme.light(
  surface: BackgroundColor.white, // lightest // done
  primary: BackgroundColor.blue, // for text (say) // done
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
  fontFamily: GoogleFonts.spectral().fontFamily, // does not work
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
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        displayMedium: TextStyle(
          //size 45
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        displaySmall: TextStyle(
          //size 36
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        headlineLarge: TextStyle(
          // size 32
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        headlineMedium: TextStyle(
          // size 28
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        headlineSmall: TextStyle(
          // size 24
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        titleLarge: TextStyle(
          // size 22
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        titleMedium: TextStyle(
            // size 16
            // fontSize: 36, //done // don't change
            fontFamily: GoogleFonts.spectral().fontFamily,
            height: 1.2),
        titleSmall: TextStyle(
          // size 14
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        bodyLarge: TextStyle(
            // size 16
            // fontSize: 18, // done // don't change
            fontFamily: GoogleFonts.spectral().fontFamily,
            height: 1.2),
        bodyMedium: TextStyle(
          // size 14
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        bodySmall: TextStyle(
          // size 12
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        labelLarge: TextStyle(
          // size 14
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        labelMedium: TextStyle(
          // size 12
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
        labelSmall: TextStyle(
          // size 11
          fontFamily: GoogleFonts.spectral().fontFamily,
        ),
      ),
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(color: lightColorScheme.primary, fontSize: 24),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ButtonColor.blue,
    foregroundColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontFamily: GoogleFonts.spectral().fontFamily,
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
    // Initial state of border
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: BorderColor.grey,
        width: 1,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: BorderColor.brightBlue,
        width: 1,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: BorderColor.red,
        width: 1,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: BorderColor.red,
        width: 1,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 0.5,
      ),
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
