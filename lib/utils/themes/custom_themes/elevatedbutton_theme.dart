import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';

class HavenElevatedButtonTheme {
  HavenElevatedButtonTheme._();

  static final lightButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HavenColors.white,
      backgroundColor: HavenColors.primaryDay, 
      disabledBackgroundColor: HavenColors.lightGrey,
      disabledForegroundColor: HavenColors.darkGrey,
      padding: const EdgeInsets.symmetric(horizontal: HavenSizes.padS),
      textStyle: TextStyle(fontSize: HavenSizes.categoryFontS, color: HavenColors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  ); 

  static final darkButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HavenColors.white,
      backgroundColor: HavenColors.primaryNight, 
      disabledBackgroundColor: HavenColors.lightGrey,
      disabledForegroundColor: HavenColors.darkGrey,
      padding: const EdgeInsets.symmetric(horizontal: HavenSizes.padS),
      textStyle: TextStyle(fontSize: HavenSizes.categoryFontS, color: HavenColors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  ); 
}