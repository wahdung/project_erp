import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/drawer_menu.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/main.dart';
import 'package:project_erp/screens/components/drawer_list_tile.dart';
import 'package:project_erp/screens/components/expansion_list_tile.dart';
import 'package:project_erp/screens/login_screen.dart';
import 'package:project_erp/controllers/controller.dart';

class DrawerMenuMini extends StatelessWidget {
  DrawerMenuMini({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return Obx(() => Center(
        child: Drawer(
            width: 100,
            child: ListView(children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 90,
                height: 90,
                child: Image(image: AssetImage('assets/images/logoonly.png')),
              ),
              // Container(
              //   padding: EdgeInsets.only(left: textPadding),
              //   child: const Text('Dashboard'),
              // ),

              IconButton(
                  isSelected: themeController.selectedDashboard.value,
                  selectedIcon: HoverWidget(
                    child: SvgPicture.asset('assets/icons/Dashboard.svg',
                        color: TextColorBlue,
                        width: 70,
                        height: 70,
                        alignment: Alignment.center),
                  ),
                  hoverColor: transparent,
                  icon: HoverWidget(
                    child: SvgPicture.asset('assets/icons/Dashboard.svg',
                        color: TextColorBlue,
                        width: 50,
                        height: 50,
                        alignment: Alignment.center),
                  ),
                  onPressed: () {
                    // if (themeController.visibleDrawer.value) {
                    !themeController.selectedDashboard.value
                        ? themeController.selectedDashboard.value = true
                        : themeController.selectedDashboard.value = false;
                    // themeController.showDrawer();
                    // } else {
                    //   // themeController.hideDrawer();
                    // }
                  }),
              IconButton(
                  isSelected: false,
                  selectedIcon: HoverWidget(
                    child: SvgPicture.asset('assets/icons/Setting.svg',
                        color: TextColorBlue,
                        width: 70,
                        height: 70,
                        alignment: Alignment.center),
                  ),
                  hoverColor: transparent,
                  icon: HoverWidget(
                    child: SvgPicture.asset('assets/icons/Setting.svg',
                        color: TextColorBlue,
                        width: 50,
                        height: 50,
                        alignment: Alignment.center),
                  ),
                  onPressed: () {
                    if (themeController.visibleDrawer.value) {
                      // themeController.showDrawer();
                    } else {
                      // themeController.hideDrawer();
                    }
                  }),
            ]))));
  }
}
