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
      displayLarge: GoogleFonts.inter(
        fontSize: 96,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 60,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      displaySmall: GoogleFonts.inter(
        //using
        fontSize: 40,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 4
      headlineMedium: GoogleFonts.inter(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 5
      headlineSmall: GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // headline 6
      titleLarge: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.19,
        color: getColor(brightness),
      ),
      // subtitle 1
      titleMedium: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 1.19,
        color: getColor(brightness),
      ),
      // subtitle 2
      titleSmall: GoogleFonts.inter(
        //using
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      // bodyText 1
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: getColor(brightness),
      ),
      // bodyText 2
      bodyMedium: GoogleFonts.inter(
        //using
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: getColor(brightness),
      ),
      labelMedium: GoogleFonts.inter(
        // using
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      // button
      labelLarge: GoogleFonts.inter(
        // using
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        height: 1.19,
        color: getColor(brightness),
      ),
    );
  }
}
