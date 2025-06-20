import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';

class HavenTextTheme {
  HavenTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.w900, color: HavenColors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w800, color: HavenColors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 28, fontWeight: FontWeight.w700, color: HavenColors.black),
    
    titleLarge: const TextStyle().copyWith(fontSize: 26, fontWeight: FontWeight.w900, color: HavenColors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: HavenColors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 22, fontWeight: FontWeight.w600, color: HavenColors.black),

    bodyLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: HavenColors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w500, color: HavenColors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 17, fontWeight: FontWeight.w500, color: HavenColors.black),

    labelLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: HavenColors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w500, color: HavenColors.black),
    labelSmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: HavenColors.black),

  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.w900, color: HavenColors.whiteAccent),
    headlineMedium: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w800, color: HavenColors.whiteAccent),
    headlineSmall: const TextStyle().copyWith(fontSize: 28, fontWeight: FontWeight.w700, color: HavenColors.whiteAccent),
    
    titleLarge: const TextStyle().copyWith(fontSize: 26, fontWeight: FontWeight.w800, color: HavenColors.whiteAccent),
    titleMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w700, color: HavenColors.whiteAccent),
    titleSmall: const TextStyle().copyWith(fontSize: 22, fontWeight: FontWeight.w600, color: HavenColors.whiteAccent),

    bodyLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),
    bodyMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),
    bodySmall: const TextStyle().copyWith(fontSize: 17, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),

    labelLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),
    labelMedium: const TextStyle().copyWith(fontSize: 15, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),
    labelSmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: HavenColors.whiteAccent),

  );
}