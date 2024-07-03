import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/dashboard_content.dart';
import 'package:project_erp/screens/components/login_content.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashboardCleanScreen extends StatelessWidget {
  DashboardCleanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(GetThemeController());
    return
        // MaterialApp(title: 'Dashboard');
        Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        drawer: DrawerMenu(),
        key: themeController.scaffoldKey,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (themeController.Desktop(context))
                Expanded(
                  child: DrawerMenu(),
                ),
              Expanded(
                flex: 5,
                child: DashboardCleanContent(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
