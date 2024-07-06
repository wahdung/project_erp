import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_erp/screens/components/theme.dart';

class GetThemeController extends GetxController {
  // initializing with the current theme of the device

  var currentTheme = false.obs;
  RxBool selectedDashboard = false.obs;
  RxBool selectedMinimizeDrawer = false.obs;
  RxBool visibleDashboard = true.obs;
  RxBool visibleSetting = false.obs;
  RxBool visibleDrawer = false.obs;

  final _key = 'theme';

  bool Mobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

  bool Tablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  bool Desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  // bool loadThemeFromBox() => _box.read(_key) ?? false;

  // _saveThemeToBox(currentTheme) => _box.write(_key, currentTheme);

  final _box = GetStorage();
  // final _key =
  // BottomDrawerController bottomController = BottomDrawerController();
  // ThemeMode get theme => ThemeMode.system.obs == ThemeMode.system
  //     ? ThemeMode.dark
  //     : ThemeMode.light;
  // _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  // RxBool isDark = true.obs;
  // var dark = CustomTheme.darkTheme.obs;
  // var light = CustomTheme.lightTheme.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var bottomNavigationKey = GlobalKey<ScaffoldState>();
  // Rx<ThemeMode> currentTheme = ThemeMode.system.obs;
  // _saveThemeToBox(bool darkmode) => _box.write(key, value);
  // bool _loadThemeFromBox() => _box.read(darkmode.value) ?? false;
  // ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  // function to switch between themes
  void selectedButtob(value) {
    selectedDashboard.value = !selectedDashboard.value;
  }

  void switchTheme() {
    Get.changeTheme(
        currentTheme.value ? CustomTheme.darkTheme : CustomTheme.lightTheme);
    currentTheme.value = !currentTheme.value;
    // _saveThemeToBox(!loadThemeFromBox());

    // darkmode = false.obs;
  }

  void showDashboard() {
    visibleDashboard.value = true;
    tongleDashboard();
  }

  void hideDashboard() {
    visibleDashboard.value = false;
    tongleDashboard();
  }

  void tongleDashboard() {
    visibleDashboard.value = !visibleDashboard.value;
  }

  void showSetting() {
    visibleSetting.value = true;
    tongleSetting();
  }

  void hideSetting() {
    visibleSetting.value = false;
    tongleSetting();
  }

  void tongleSetting() {
    visibleSetting.value = !visibleSetting.value;
  }

  void showDrawer() {
    visibleDrawer.value = true;
    tongleDrawer();
  }

  void hideDrawer() {
    visibleDrawer.value = false;
    tongleDrawer();
  }

  void tongleDrawer() {
    visibleDrawer.value = !visibleDrawer.value;
  }

  void openDrawer() {
    if (!scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  void clearAllSelected() {
    visibleDashboard.value
        ? visibleDashboard.value = false
        : visibleDashboard.value = visibleDashboard.value;
    visibleSetting.value
        ? visibleSetting.value = false
        : visibleSetting.value = visibleDashboard.value;
  }
}

// void openBottom() {
//   bottomController.open();
// }
// void openBottom() {
//   if (!bottomNavigationKey.bottomNavigationKey!.isDrawerOpen) {
//     bottomNavigationKey.currentState!.openDrawer();
//   }
// }

void ChangeMode() {
  // isDark.value = true;
  // print(isDark.value);
  // if (isDark.value == false) {
  //   Get.changeThemeMode(currentTheme.value = ThemeMode.dark);
  //   isDark.value = true;
  //   print(currentTheme.value);
  // } else {
  //   Get.changeThemeMode(currentTheme.value = ThemeMode.light);
  //   isDark.value = false;
  //   print(currentTheme.value);
  // }
}
