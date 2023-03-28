import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:way/style/colors.dart';

getColor(Brightness brightness) {
  if (brightness == Brightness.light) {
    return CustomColors.textBlack;
  }
}

class CustomTextTheme {
  static TextTheme getTheme(Brightness brightness) {
    return TextTheme(
      displayLarge: GoogleFonts.montserrat(
        fontSize: 96,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 60,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
      displaySmall: GoogleFonts.montserrat(
        //using
        fontSize: 40,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 4
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 5
      headlineSmall: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 6
      titleLarge: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.19,
        color: getColor(brightness),
      ),
      // subtitle 1
      titleMedium: GoogleFonts.montserrat(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // subtitle 2
      titleSmall: GoogleFonts.montserrat(
        //using
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
      // bodyText 1
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 1.4,
        color: getColor(brightness),
      ),
      // bodyText 2
      bodyMedium: GoogleFonts.montserrat(
        //using
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 1.4,
        color: getColor(brightness),
      ),
      labelMedium: GoogleFonts.montserrat(
        // using
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      // button
      labelLarge: GoogleFonts.montserrat(
        // using
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
      labelSmall: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        height: 1.19,
        color: getColor(brightness),
      ),
    );
  }
}
