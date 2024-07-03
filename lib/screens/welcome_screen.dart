import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/Login.dart';
import 'package:project_erp/screens/components/dashboard_clean_content.dart';
import 'package:project_erp/screens/components/dashboard_content.dart';
import 'package:project_erp/screens/components/login_content.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/dash_board_clean_screen.dart';
import 'package:project_erp/screens/login_screen.dart';
import 'package:project_erp/constants/responsive.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

// void _menujuLogin(BuildContext context) {
//   // Navigator.push returns a Future that completes after calling
//   // Navigator.pop on the Selection Screen.
//   final result = Navigator.push(
//     context,
//     // Create the SelectionScreen in the next step.
//     MaterialPageRoute(builder: (context) => const LoginScreen()),
//   );
// }

// void login(BuildContext context) {
//   // final result = Navigator.push(
//   //   context,
//   //   // Create the SelectionScreen in the next step.
//   //   MaterialPageRoute(builder: (context) => const LoginScreen()),
//   // );
//   n
void toLogin() {
  Get.toNamed('/login');
} // }

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(GetThemeController());
    // TODO: implement build
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: new EdgeInsets.only(top: 80)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (themeController.Desktop(context))
                    Text(
                      "Welcome To",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: TextColorBlue),
                    ),
                  if (!themeController.Desktop(context))
                    Text(
                      "Welcome To",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: TextColorBlue),
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (themeController.Desktop(context))
                    Text("MAHAPUTRA GROUP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: TextColorBlue)),
                  if (!themeController.Desktop(context))
                    Text("MAHAPUTRA GROUP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: TextColorBlue)),
                ],
              ),
              if (themeController.Desktop(context))
                Padding(padding: new EdgeInsets.only(bottom: 80)),
              if (themeController.Tablet(context))
                Padding(padding: new EdgeInsets.only(bottom: 50)),
              if (themeController.Mobile(context))
                Padding(padding: new EdgeInsets.only(bottom: 30)),

              // Row(
              //   children: [
              //     Obx(() => Switch(
              //           value: themeController.currentTheme == ThemeMode.light,
              //           onChanged: (value) {
              //             themeController.switchTheme();
              //             Get.changeThemeMode(
              //                 themeController.currentTheme.value);
              //             print(themeController.currentTheme.value);
              //           },
              //           activeColor: CustomTheme.white,
              //         ))
              //   ],
              // ),
              if (themeController.Mobile(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/logompe.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/dwiputra.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              if (themeController.Mobile(context))
                SizedBox(
                  height: 25,
                ),
              if (themeController.Mobile(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/rajaniaga.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/golden.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              if (themeController.Mobile(context))
                SizedBox(
                  height: 25,
                ),
              if (themeController.Mobile(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/alamlangit.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/blanjablanja.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              if (themeController.Mobile(context))
                SizedBox(
                  height: 25,
                ),
              if (themeController.Mobile(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/koperasi.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/hrm.png'),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              if (themeController.Desktop(context)) // row desktop
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/logompe.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/dwiputra.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/rajaniaga.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/golden.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              if (themeController.Desktop(context))
                SizedBox(width: 50, height: 50),
              if (themeController.Desktop(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/alamlangit.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/blanjablanja.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/koperasi.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/hrm.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              if (themeController.Tablet(context)) // row tablet
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/logompe.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/dwiputra.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/rajaniaga.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    // SizedBox(
                    //   width: 150,
                    //   height: 150,
                    //   child: HoverWidget(
                    //       child: FloatingActionButton(
                    //     backgroundColor: bgColorPeach,
                    //     hoverColor: bgColorHover,
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (BuildContext context) =>
                    //                   const LoginScreen()));
                    //     },
                    //     child: Image.asset('/images/golden.png'),
                    //   )),
                    // ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                  ],
                ),
              if (themeController.Tablet(context))
                SizedBox(
                  width: 50,
                  height: 50,
                ),
              if (themeController.Tablet(context)) // row tablet
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/golden.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/alamlangit.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/blanjablanja.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    // SizedBox(
                    //   width: 150,
                    //   height: 150,
                    //   child: HoverWidget(
                    //       child: FloatingActionButton(
                    //     backgroundColor: bgColorPeach,
                    //     hoverColor: bgColorHover,
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (BuildContext context) =>
                    //                   const LoginScreen()));
                    //     },
                    //     child: Image.asset('/images/golden.png'),
                    //   )),
                    // ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                  ],
                ),
              if (themeController.Tablet(context))
                SizedBox(
                  width: 50,
                  height: 50,
                ),
              if (themeController.Tablet(context)) // row tablet
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          toLogin();
                        },
                        child: Image.asset('/images/koperasi.png'),
                      )),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: HoverWidget(
                          child: FloatingActionButton(
                        backgroundColor: Theme.of(context).cardColor,
                        hoverColor: Theme.of(context).hoverColor,
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                        child: Image.asset('/images/hrm.png'),
                      )),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    // SizedBox(
                    //   width: 150,
                    //   height: 150,
                    //   child: HoverWidget(
                    //       child: FloatingActionButton(
                    //     backgroundColor: bgColorPeach,
                    //     hoverColor: bgColorHover,
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (BuildContext context) =>
                    //                   const LoginScreen()));
                    //     },
                    //     child: Image.asset('/images/rajaniaga.png'),
                    //   )),
                    // ),
                    SizedBox(
                      width: 50,
                    ),
                    // SizedBox(
                    //   width: 150,
                    //   height: 150,
                    //   child: HoverWidget(
                    //       child: FloatingActionButton(
                    //     backgroundColor: bgColorPeach,
                    //     hoverColor: bgColorHover,
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (BuildContext context) =>
                    //                   const LoginScreen()));
                    //     },
                    //     child: Image.asset('/images/golden.png'),
                    //   )),
                    // ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                  ],
                ),
              if (!themeController.Desktop(context)) SizedBox(height: 40),
              if (themeController.Desktop(context)) SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      themeController.currentTheme == ThemeMode.light
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
                  ),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child:
                      // SizedBox(height: 10),
                      Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('© Mahaputra Group 2024'),
                  ),
                ),
              ])
              // SizedBox(
              //   width: 50,
              // ),
            ],
          ),
        ),
        // child: Scaffold(
        //   body: Column(children: <Widget>[
        //     Padding(padding: new EdgeInsets.only(top: 80)),
        //     const Text(
        //       "Welcome To",
        //       style: TextStyle(
        //           fontWeight: FontWeight.w900,
        //           fontSize: 20,
        //           color: TextColorBlue),
        //     ),
        //     const Text(
        //       'MAHAPUTRA GROUP',
        //       style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 50,
        //           color: TextColorBlue),
        //     ),
        //     Padding(padding: new EdgeInsets.only(bottom: 80)),
        //     const Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //             child: FloatingActionButton(
        //               backgroundColor: TextColorBlue,
        //               onPressed: null,
        //               child: Icon(Icons.add),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //             child: FloatingActionButton(
        //               backgroundColor: TextColorBlue,
        //               onPressed: ,
        //               child: Icon(Icons.add),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //             child: FloatingActionButton(
        //               backgroundColor: TextColorBlue,
        //               onPressed: null,
        //               child: Icon(Icons.add),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //             child: FloatingActionButton(
        //               backgroundColor: TextColorBlue,
        //               onPressed: null,
        //               child: Icon(Icons.add),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //             child: FloatingActionButton(
        //               backgroundColor: TextColorBlue,
        //               onPressed: null,
        //               child: Icon(Icons.add),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     SizedBox(height: 50),
        //     const Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //               child: FloatingActionButton(
        //             backgroundColor: TextColorBlue,
        //             onPressed: null,
        //             child: Icon(Icons.add),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //               child: FloatingActionButton(
        //             backgroundColor: TextColorBlue,
        //             onPressed: null,
        //             child: Icon(Icons.add),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //               child: FloatingActionButton(
        //             backgroundColor: TextColorBlue,
        //             onPressed: null,
        //             child: Icon(Icons.add),
        //           )),
        //         ),
        //         SizedBox(
        //           width: 50,
        //         ),
        //         SizedBox(
        //           width: 150,
        //           height: 150,
        //           child: HoverWidget(
        //               child: FloatingActionButton(
        //             backgroundColor: TextColorBlue,
        //             onPressed: null,
        //             child: Icon(Icons.add),
        //           )),
        //         ),

        //         // HoverWidget(
        //         //     child: const FloatingActionButton(
        //         //   onPressed: null,
        //         //   child: Icon(Icons.remove),
        //         // ))

        //         // Text(
        //         //   '$_counter',
        //         //   style: Theme.of(context).textTheme.headlineMedium,
        //         // ),
        //       ],
        //     ),
        //   ]),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
