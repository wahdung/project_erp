import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/custom_appbar.dart';

import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/dashboard_content.dart';
import 'package:project_erp/screens/components/drawer_menu_mini.dart';
import 'package:project_erp/screens/components/login_content.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashboardCleanScreen extends StatelessWidget {
  DashboardCleanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeController = Get.put(GetThemeController());
    final themeController = Get.find<GetThemeController>();

    return
        // MaterialApp(title: 'Dashboard');
        Container(
      child: Scaffold(
        key: themeController.scaffoldKey,
        // backgroundColor: Theme.of(context).cardColor,
        drawer: DrawerMenu(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              themeController.Desktop(context)
                  ? Obx(() => Container(
                        child: themeController.visibleDrawer.value
                            ? DrawerMenuMini()
                            : DrawerMenu(),
                      ))
                  : Container(),
              Expanded(
                  child: Stack(
                children: [
                  Scaffold(
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(70),
                      child: AppBar(
                          flexibleSpace: Container(
                        child: CustomAppbar(),
                      )),
                    ),
                    body: DashboardCleanContent(),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 50),
                  //   child: Card(
                  //     color: Theme.of(context).cardColor,
                  //     shadowColor: TextColorBlue,
                  //     child: Column(children: [
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text(
                  //         'CHART 1',
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold, fontSize: 20),
                  //       ),
                  //       Container(width: 470, height: 300, child: Text("")),
                  //     ]),
                  //   ),
                  // )
                ],
              )),

              // Expanded(
              //   flex: 5,
              //   child: DashboardCleanContent(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
