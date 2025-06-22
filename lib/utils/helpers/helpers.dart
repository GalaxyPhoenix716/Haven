import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HavenHelpers {
  HavenHelpers._();

  //Formatters
  static String formatAmount(double amount) {
    final formatter = NumberFormat.decimalPattern('en_IN');

    return formatter.format(amount);
  }

  //Navigation
  static void goBack() {
    Get.back();
  }

  static void navigateTo(Widget view) {
    Get.offAll(() => view);
  }

  static void pushTo(Widget view) {
    Get.to(() => view, preventDuplicates: false);
  }
}
