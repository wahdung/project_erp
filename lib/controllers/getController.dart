import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // initializing with the current theme of the device
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;

  // function to switch between themes
  void switchTheme() {
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  void openDrawer() {
    if (!scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
