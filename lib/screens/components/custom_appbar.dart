import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/profile_info.dart';
import 'package:project_erp/screens/components/search_field.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return Row(
      children: [
        if (!themeController.Desktop(context))
          IconButton(
            onPressed: themeController.openDrawer,
            icon: Icon(
              Icons.menu,
              color: !themeController.currentTheme.value
                  ? TextColorBlue
                  : Colors.white,
            ),
          ),
        Expanded(
          child: SearchField(),
        ),
        SizedBox(
          width: 20,
        ),
        if (!themeController.Mobile(context))
          Obx(() => Switch(
                value: themeController.currentTheme.value,
                // themeController.currentTheme == ThemeMode.light,
                onChanged: (value) => themeController.switchTheme(),

                //(value) {
                //   themeController.switchTheme();
                //   Get.changeThemeMode(
                //       themeController.currentTheme.value);
                //   print(themeController.currentTheme.value);
                // },
                activeColor: CustomTheme.lightThemeColor,
                activeTrackColor: CustomTheme.lightThemeColor.withOpacity(0.5),
                inactiveThumbColor: CustomTheme.grey,
                inactiveTrackColor: CustomTheme.white,
              )),
        // Obx(() => Switch(
        //       value: themeController.isDark.value,
        //       // themeController.currentTheme == ThemeMode.light,
        //       onChanged: (value) => themeController.ChangeMode(),

        //       //(value) {
        //       //   themeController.switchTheme();
        //       //   Get.changeThemeMode(
        //       //       themeController.currentTheme.value);
        //       //   print(themeController.currentTheme.value);
        //       // },
        //       activeColor: CustomTheme.lightThemeColor,
        //     )),
        ProfileInfo()
      ],
    );
  }
}
