import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/themes/custom_themes/elevatedbutton_theme.dart';
import 'package:haven/utils/themes/custom_themes/text_theme.dart';

class HavenAppTheme {
  HavenAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: HavenColors.primaryDay,
      onPrimary: HavenColors.cardDay,
      secondary: HavenColors.secondaryDay,
      onSecondary: HavenColors.cardDay,
      error: Colors.red,
      onError: HavenColors.cardDay,
      surface: HavenColors.backgroundDay,
      onSurface: HavenColors.black,
    ),
    cardColor: HavenColors.cardDay,
    scaffoldBackgroundColor: HavenColors.backgroundDay,
    textTheme: HavenTextTheme.lightTextTheme,
    elevatedButtonTheme: HavenElevatedButtonTheme.lightButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: HavenColors.primaryNight,
      onPrimary: HavenColors.whiteAccent,
      secondary: HavenColors.secondaryNight,
      onSecondary: HavenColors.whiteAccent,
      error: Colors.red,
      onError: HavenColors.whiteAccent,
      surface: HavenColors.backgroundNight,
      onSurface: HavenColors.whiteAccent,
      
    ),
    cardColor: HavenColors.cardNight,
    scaffoldBackgroundColor: HavenColors.backgroundNight,
    textTheme: HavenTextTheme.darkTextTheme,
    elevatedButtonTheme: HavenElevatedButtonTheme.darkButtonTheme,
  );
}
