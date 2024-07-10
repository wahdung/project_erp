import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';

import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/dashboard_content.dart';
import 'package:project_erp/screens/components/login_content.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HoverWidgetState().dispose();
    // final themeController = Get.find<GetThemeController>();
    // final themeController = Get.put(GetThemeController());
    return Container(
        child: Scaffold(
            //drawer: DrawerMenu(),
            // key: themeController.scaffoldKey,
            body: SafeArea(
                child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(child: bottomNavigation()),
        if (Responsive.isDesktop(context))
          Expanded(
            //   //child: DrawerMenu(),
            child: LoginContent(),
          ),
        if (Responsive.isMobile(context))
          Expanded(
            flex: 5,
            child: LoginContent(),
          ),
        if (Responsive.isTablet(context))
          Expanded(
            flex: 5,
            child: LoginContent(),
          ),
      ],
    ))));
  }
}
