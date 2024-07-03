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

class DrawerMenu extends StatelessWidget {
  DrawerMenu({Key? key}) : super(key: key);
  final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(appPadding),
            child: Image(image: AssetImage('images/logowithtext.png')),
          ),
          Container(
            padding: EdgeInsets.only(left: textPadding),
            child: const Text('Dashboard'),
          ),
          HoverWidget(
            child: DrawerListTile(
                title: 'Dashboard',
                svgSrc: 'icons/Dashboard.svg',
                colorIcon: TextColorBlue,
                tap: () {
                  print('You Click Dash Board');
                }),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: textPadding,
          //     right: appPadding * 2,
          //   ),
          //   child: Divider(
          //     color: grey,
          //     thickness: 0.2,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: TextColorBlue,
              thickness: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: textPadding),
            child: Text('Master Data'),
          ),
          ExpansionTile(
            iconColor: Colors.blue,
            collapsedIconColor: TextColorBlue,
            shape: Border(), // Menghilangkan border hitam saat expansion
            trailing: Wrap(
              // space between two icons
              children: <Widget>[
                Icon(Icons.arrow_drop_down_circle_sharp),
                Padding(padding: EdgeInsets.only(right: 30))
                // icon-1
                // icon-2
              ],
            ),
            tilePadding: EdgeInsets.only(left: 50),
            title: Text(
              "Data Persons",
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: TextColorBlue),
            ),
            leading: SvgPicture.asset(
              'icons/Subscribers.svg',
              color: TextColorBlue,
              height: 20,
              alignment: Alignment.centerLeft,
            ),
            children: [
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Customer',
                      svgSrc: 'icons/Subscribers.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click Customer');
                      }),
                ),
              ),
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Partner',
                      svgSrc: 'icons/Subscribers.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click Partner');
                      }),
                ),
              ),
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Supplier',
                      svgSrc: 'icons/Subscribers.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click Supplier');
                      }),
                ),
              ),
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Karyawan',
                      svgSrc: 'icons/Subscribers.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click karyawan');
                      }),
                ),
              ),
            ],
          ),
          ExpansionTile(
            iconColor: Colors.blue,
            collapsedIconColor: TextColorBlue,
            shape: Border(), // Menghilangkan border hitam saat expansion
            trailing: Wrap(
              // space between two icons
              children: <Widget>[
                Icon(Icons.arrow_drop_down_circle_sharp),
                Padding(padding: EdgeInsets.only(right: 30))
                // icon-1
                // icon-2
              ],
            ),
            tilePadding: EdgeInsets.only(left: 50),
            title: Text(
              "Data Produk",
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: TextColorBlue),
            ),
            leading: SvgPicture.asset(
              'icons/Box.svg',
              color: TextColorBlue,
              height: 20,
              alignment: Alignment.centerLeft,
            ),
            children: [
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Jenis Produk',
                      svgSrc: 'icons/Box.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click Jenis Produk');
                      }),
                ),
              ),
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                      title: 'Merk',
                      svgSrc: 'icons/Box.svg',
                      colorIcon: grey,
                      tap: () {
                        print('You Click Merk');
                      }),
                ),
              ),
              HoverWidget(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: DrawerListTile(
                    title: 'Type',
                    svgSrc: 'icons/Box.svg',
                    colorIcon: grey,
                    tap: () {},
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: TextColorBlue,
              thickness: 1,
            ),
          ),
          HoverWidget(
            child: DrawerListTile(
                title: 'Settings',
                svgSrc: 'icons/Setting.svg',
                colorIcon: TextColorBlue,
                tap: () {}),
          ),
          HoverWidget(
            child: DrawerListTile(
                title: 'Logout',
                svgSrc: 'icons/Logout.svg',
                colorIcon: TextColorBlue,
                tap: () {
                  themeController.Desktop(context)
                      ? Get.back()
                      : Get.toNamed('/login');
                }),
          ),
          SizedBox(height: 300),
          if (Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Container(
                      child: Text(
                        themeController.currentTheme == ThemeMode.light
                            ? 'Light Mode'
                            : 'Dark Mode',
                        style: TextStyle(
                            color: TextColorBlue, fontWeight: FontWeight.bold),
                      ),
                    )),
                Obx(() => Switch(
                      value: themeController.isDark.value,
                      // themeController.currentTheme == ThemeMode.light,
                      onChanged: (value) => themeController.ChangeMode(),

                      //(value) {
                      //   themeController.switchTheme();
                      //   Get.changeThemeMode(
                      //       themeController.currentTheme.value);
                      //   print(themeController.currentTheme.value);
                      // },
                      activeColor: CustomTheme.lightThemeColor,
                    )),
              ],
            )
        ],
      ),
    );
  }
}
