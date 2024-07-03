import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_erp/screens/components/theme.dart';

class GetThemeController extends GetxController {
  // initializing with the current theme of the device
  bool Mobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

  bool Tablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  bool Desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  final _box = GetStorage();
  // final _key =
  ThemeMode get theme => ThemeMode.system.obs == ThemeMode.system
      ? ThemeMode.dark
      : ThemeMode.light;
  // _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  RxBool isDark = true.obs;
  var dark = CustomTheme.darkTheme.obs;
  var light = CustomTheme.lightTheme.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;
  // _saveThemeToBox(bool darkmode) => _box.write(key, value);
  // bool _loadThemeFromBox() => _box.read(darkmode.value) ?? false;
  // ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  // function to switch between themes
  void switchTheme() {
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    // darkmode = false.obs;
  }

  void openDrawer() {
    if (!scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  void ChangeMode() {
    // isDark.value = true;
    print(isDark.value);
    if (isDark.value == false) {
      Get.changeThemeMode(currentTheme.value = ThemeMode.dark);
      isDark.value = true;
      print(currentTheme.value);
    } else {
      Get.changeThemeMode(currentTheme.value = ThemeMode.light);
      isDark.value = false;
      print(currentTheme.value);
    }
  }
}
