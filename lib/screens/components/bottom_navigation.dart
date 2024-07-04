import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/main.dart';
import 'package:project_erp/screens/components/drawer_list_tile.dart';
import 'package:project_erp/screens/components/expansion_list_tile.dart';
import 'package:project_erp/screens/login_screen.dart';
import 'package:project_erp/controllers/controller.dart';

class bottomNavigation extends StatelessWidget {
  bottomNavigation({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return BottomDrawer(
      headerHeight: 10,
      drawerHeight: 300,
      body: Container(
        child: Text('test drawer body'),
      ),
      color: Colors.blue,
      header: Container(
        child: Text('test drawer header'),
      ),

      // controller: themeController.bottomController,
    );
  }
}
