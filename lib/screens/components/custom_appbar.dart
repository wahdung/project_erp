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
  final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<Controller>().controlMenu,
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).hoverColor,
            ),
          ),
        Expanded(
          child: SearchField(),
        ),
        SizedBox(
          width: 20,
        ),
        if (!Responsive.isMobile(context))
          Obx(() => Switch(
                value: themeController.currentTheme == ThemeMode.light,
                onChanged: (value) {
                  themeController.switchTheme();
                  Get.changeThemeMode(themeController.currentTheme.value);
                  print(themeController.currentTheme.value);
                },
                activeColor: CustomTheme.lightThemeColor,
              )),
        ProfileInfo()
      ],
    );
  }
}
