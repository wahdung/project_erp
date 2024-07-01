import 'package:flutter/material.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/dashboard_content.dart';
import 'package:project_erp/screens/components/login_content.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashboardCleanScreen extends StatelessWidget {
  const DashboardCleanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(title: 'Dashboard');
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgColor,
        drawer: DrawerMenu(),
        key: context.read<Controller>().scaffoldKey,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
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
