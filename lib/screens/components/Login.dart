import 'dart:math';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/controllers/getController.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/drawer_menu.dart';
import 'package:project_erp/screens/dash_board_clean_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_erp/constants/constants.dart';

import 'bar_chart_users.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return Container(
      constraints: BoxConstraints(minHeight: 300, minWidth: 400),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        constraints: BoxConstraints(minWidth: 100, minHeight: 30),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            Text("LOGIN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  color: TextColorBlue,
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                ),
                Form(
                    child: SizedBox(
                  width: 300,
                  child: TextField(
                      style: TextStyle(
                          color: themeController.currentTheme.value
                              ? Colors.white
                              : TextColorBlue,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                  color: themeController.currentTheme.value
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide:
                                  BorderSide(color: TextColorBlue, width: 3)),
                          prefixIcon: Icon(
                            Icons.person,
                            color: TextColorBlue,
                          ),
                          labelText: 'Username',
                          labelStyle: new TextStyle(
                              color: TextColorBlue,
                              fontWeight: FontWeight.bold)),
                      maxLength: 18),
                )
                    // Text('login untuk masuk sistem'),

                    )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                ),
                Form(
                    child: SizedBox(
                  width: 300,
                  child: TextField(
                    style: TextStyle(
                        color: themeController.currentTheme.value
                            ? Colors.white
                            : TextColorBlue,
                        fontWeight: FontWeight.w700),
                    obscureText: true,
                    decoration: InputDecoration(
                        // fillColor: TextColorBlue,
                        // focusColor: TextColorBlue,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: themeController.currentTheme.value
                                    ? Colors.white
                                    : Colors.black,
                                width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                BorderSide(color: TextColorBlue, width: 3)),
                        prefixIcon: Icon(
                          Icons.verified_user_sharp,
                          color: TextColorBlue,
                        ),
                        labelText: 'Password',
                        labelStyle: new TextStyle(
                            color: TextColorBlue, fontWeight: FontWeight.bold)),
                    maxLength: 12,
                  ),
                )
                    // Text('login untuk masuk sistem'),

                    ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 150,
                // ),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (BuildContext context) =>
                //                     DashboardCleanScreen()));
                //       },
                //       child: const Text(
                //         'Login',
                //         style: TextStyle(
                //             color: TextColorBlue, fontWeight: FontWeight.bold),
                //       ),
                //       style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(15)),
                //         backgroundColor: Theme.of(context).cardColor,
                //         shadowColor: TextColorBlue,
                //       )),
                // ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: HoverWidget(
                      child: FloatingActionButton(
                          heroTag: UniqueKey(),
                          backgroundColor: Theme.of(context).cardColor,
                          hoverColor: Theme.of(context).hoverColor,
                          onPressed: () {
                            Get.offAndToNamed('/dashboard');
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: TextColorBlue,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: HoverWidget(
                      child: FloatingActionButton(
                          heroTag: UniqueKey(),
                          backgroundColor: Theme.of(context).cardColor,
                          hoverColor: Theme.of(context).hoverColor,
                          onPressed: () {
                            print(themeController.currentTheme.value);
                          },
                          child: Text(
                            'Offline',
                            style: TextStyle(
                                color: TextColorBlue,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: HoverWidget(
                      child: FloatingActionButton(
                          heroTag: UniqueKey(),
                          backgroundColor: Theme.of(context).cardColor,
                          hoverColor: Theme.of(context).hoverColor,
                          onPressed: () {
                            Get.offAndToNamed('/welcome');
                          },
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                color: TextColorBlue,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
              ],
            ),
            SizedBox(height: 50),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    !themeController.currentTheme.value
                        ? 'Light Mode'
                        : 'Dark Mode',
                    style: TextStyle(
                        color: TextColorBlue, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                  //Obx(() => Switch(
                  //       value: themeController.currentTheme == ThemeMode.light,
                  //       onChanged: (value) {
                  //         themeController.switchTheme();
                  //         Get.changeThemeMode(
                  //             themeController.currentTheme.value);
                  //         print(themeController.currentTheme.value);
                  //       },
                  //       activeColor: CustomTheme.lightThemeColor,
                  //     )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(children: [
              // SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text('© Mahaputra Group 2024'),
              ),
            ])
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: 'Enter your name',
            //     // TODO: add errorHint
            //   ),
            // ),
          ],
        ),

        // SizedBox(
        //   height: 30,
        // ),
        // Text(
        //   "LOGIN",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontWeight: FontWeight.w900,
        //     fontSize: 30,
        //     color: textColor,
        //   ),
        // ),
        // Expanded(
        //   child: TextField(
        //     decoration: InputDecoration(
        //       constraints: BoxConstraints.tightFor(
        //         width: 200,
        //       ),
        //     ),
        //   ),
        // )
      ),
    );
  }
}
