import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';
import 'package:way/theme/text_theme.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.primaryMaroon,
      fontFamily: 'Inter',
      appBarTheme: const AppBarTheme(color: CustomColors.primaryMaroon),
      textTheme: CustomTextTheme.getTheme(Brightness.light),
      colorScheme: const ColorScheme.light(
          primary: CustomColors.primaryMaroon,
          secondary: CustomColors.secondaryYellow),
      dividerColor: CustomColors.dividerGrey,
    );
  }
}
