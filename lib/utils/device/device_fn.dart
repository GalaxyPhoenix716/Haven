import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HavenDeviceHelpers {
  HavenDeviceHelpers._();

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double getDeviceHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getDeviceWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
  
  static double getAppBarHeight() {
    return kToolbarHeight;
  }
}