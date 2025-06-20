import 'package:flutter/material.dart';

class HavenColors {
  HavenColors._();

  //Light Mode
  static const Color primaryDay = Color(0xFFEF7F57);
  static const Color secondaryDay = Color(0xFFA0D6B4);

  static const Color black = Color(0xFF4A4A4A);
  static const Color blackAccent = Color(0xFF333333);

  static const Color backgroundDay = Color(0xFFFFFEF8);
  static const Color cardDay = Color(0xFFF2F0EB);

  //Common
  static Color lightGrey = Color(0xFF4A4A4A).withValues(alpha: 0.29);
  static Color darkGrey = Color(0xFF4A4A4A).withValues(alpha: 0.78);
  static const Color primaryAccent = Color(0xFFF76B39);
  static Color primaryAccentGlow = Color(0xFFF76B39).withValues(alpha: 0.5);

  //Dark Mode
  static const Color primaryNight = Color(0xFFE97451);
  static const Color secondaryNight = Color(0xFF2F4F4F);

  static const Color white = Color(0xFFFFFEF8);
  static const Color whiteAccent = Color(0xFFF2F0EB);

  static const Color backgroundNight = Color(0xFF1C1C1C);
  static const Color cardNight = Color(0xFF2E2E2E);
}
