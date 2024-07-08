import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hover_widget/hover_widget.dart';
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
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return Stack(
      // padding: EdgeInsets.all(5),
      // constraints: BoxConstraints.tightForFinite(),
      // decoration: BoxDecoration(),
      children: [
        // Positioned(top: 50, child: Text('')),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 10,
          ),
          if (!themeController.Desktop(context))
            Container(
              padding: EdgeInsets.only(top: 10),
              child: HoverWidget(
                child: Obx(() => IconButton(
                      onPressed: themeController.openDrawer,
                      icon: Icon(
                        Icons.menu,
                        color: !themeController.currentTheme.value
                            ? TextColorBlue
                            : Colors.white,
                      ),
                    )),
              ),
            ),
          if (themeController.Desktop(context))
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Obx(() => HoverWidget(
                    child: IconButton(
                      onPressed: () {
                        themeController.visibleDrawer.value
                            ? themeController.showDrawer()
                            : themeController.hideDrawer();
                        themeController.selectedMinimizeDrawer.value =
                            !themeController.selectedMinimizeDrawer.value;
                        print(selected);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: !themeController.currentTheme.value
                            ? TextColorBlue
                            : Colors.white,
                      ),
                      selectedIcon: Icon(
                        Icons.arrow_forward_ios,
                        color: !themeController.currentTheme.value
                            ? TextColorBlue
                            : Colors.white,
                      ),
                      isSelected: themeController.selectedMinimizeDrawer.value,
                    ),
                  )),
            ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: SearchField(),
          ),
          SizedBox(
            width: 10,
          ),
          if (!themeController.Mobile(context))
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Obx(() => Switch(
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
                    activeTrackColor:
                        CustomTheme.lightThemeColor.withOpacity(0.5),
                    inactiveThumbColor: CustomTheme.grey,
                    inactiveTrackColor: CustomTheme.white,
                  )),
            ),
          ProfileInfo(),
          SizedBox(
            width: 10,
          ),
        ]),
      ],
      //
      // SizedBox(
      //   width: 20,
      // ),
      // if (!themeController.Mobile(context))
      //   Obx(() => Switch(
      //         value: themeController.currentTheme.value,
      //         // themeController.currentTheme == ThemeMode.light,
      //         onChanged: (value) => themeController.switchTheme(),

      //         //(value) {
      //         //   themeController.switchTheme();
      //         //   Get.changeThemeMode(
      //         //       themeController.currentTheme.value);
      //         //   print(themeController.currentTheme.value);
      //         // },
      //         activeColor: CustomTheme.lightThemeColor,
      //         activeTrackColor: CustomTheme.lightThemeColor.withOpacity(0.5),
      //         inactiveThumbColor: CustomTheme.grey,
      //         inactiveTrackColor: CustomTheme.white,
      //       )),
      // // Obx(() => Switch(
      // //       value: themeController.isDark.value,
      // //       // themeController.currentTheme == ThemeMode.light,
      // //       onChanged: (value) => themeController.ChangeMode(),

      // //       //(value) {
      // //       //   themeController.switchTheme();
      // //       //   Get.changeThemeMode(
      // //       //       themeController.currentTheme.value);
      // //       //   print(themeController.currentTheme.value);
      // //       // },
      // //       activeColor: CustomTheme.lightThemeColor,
      // //     )),
      // ProfileInfo()
    );
  }
}
