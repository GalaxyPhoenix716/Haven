import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';

class HavenAppBarTheme {
  HavenAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: HavenColors.blackAccent, size: HavenSizes.iconL),
    actionsIconTheme: IconThemeData(color: HavenColors.blackAccent, size: HavenSizes.iconL),
    titleTextStyle: TextStyle(fontSize: HavenSizes.categoryFontS, fontWeight: FontWeight.bold, color: HavenColors.blackAccent),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: HavenColors.whiteAccent, size: HavenSizes.iconL),
    actionsIconTheme: IconThemeData(color: HavenColors.whiteAccent, size: HavenSizes.iconL),
    titleTextStyle: TextStyle(fontSize: HavenSizes.categoryFontS, fontWeight: FontWeight.bold, color: HavenColors.whiteAccent),
  );
}