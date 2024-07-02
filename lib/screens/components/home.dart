import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/screens/components/Login.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/welcome_screen.dart';
// import '../../../Web-App/webapp1/lib/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/controllers/getcontroller.dart';
// import 'package:project_erp/screens/dash_board_screen.dart';
import 'package:project_erp/screens/dash_board_clean_screen.dart';
import 'package:project_erp/screens/login_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(minHeight: 400, minWidth: 450),
      padding: EdgeInsets.all(appPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Login()
              // Container(
              //   constraints: BoxConstraints(minHeight: 300, minWidth: 400),
              //   decoration: BoxDecoration(
              //     color: Theme.of(context).cardColor,
              //     //           ?,
              //     borderRadius: BorderRadius.circular(10),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 5,
              //         blurRadius: 7,
              //         offset: Offset(0, 3),
              //       ),
              //     ],
              //   ),
              //   child: Container(
              //     constraints: BoxConstraints(minWidth: 100, minHeight: 30),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 50,
              //         ),
              //         Text("LOGIN",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //               fontWeight: FontWeight.w900,
              //               fontSize: 40,
              //               // color: TextColorBlue,
              //             )),
              //         SizedBox(
              //           height: 30,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               height: 70,
              //             ),
              //             Form(
              //                 child: SizedBox(
              //               width: 300,
              //               child: TextField(
              //                 decoration: InputDecoration(
              //                     icon: Icon(
              //                       Icons.person,
              //                       color: TextColorBlue,
              //                     ),
              //                     hintText: 'Username !',
              //                     labelStyle: new TextStyle(
              //                       color: TextColorBlue,
              //                     )),
              //                 maxLength: 12,
              //               ),
              //             )
              //                 // Text('login untuk masuk sistem'),

              //                 )
              //           ],
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               height: 50,
              //             ),
              //             Form(
              //                 child: SizedBox(
              //               width: 300,
              //               child: TextField(
              //                 obscureText: true,
              //                 decoration: InputDecoration(
              //                     icon: Icon(
              //                       Icons.verified_user_sharp,
              //                       color: TextColorBlue,
              //                     ),
              //                     hintText: 'Password !',
              //                     labelStyle:
              //                         new TextStyle(color: TextColorBlue)),
              //                 maxLength: 12,
              //               ),
              //             )
              //                 // Text('login untuk masuk sistem'),

              //                 ),
              //           ],
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               height: 150,
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5, horizontal: 5),
              //               child: ElevatedButton(
              //                   onPressed: () {
              //                     Navigator.push(
              //                         context,
              //                         MaterialPageRoute(
              //                             builder: (BuildContext context) =>
              //                                 const DashboardCleanScreen()));
              //                   },
              //                   child: const Text(
              //                     'Login',
              //                     style: TextStyle(
              //                         color: TextColorBlue,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   style: ElevatedButton.styleFrom(
              //                     shape: RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(15)),
              //                     // backgroundColor: bgColor,
              //                     shadowColor: TextColorBlue,
              //                   )),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5, horizontal: 5),
              //               child: ElevatedButton(
              //                   onPressed: () {},
              //                   child: const Text(
              //                     'Offline',
              //                     style: TextStyle(
              //                         color: TextColorBlue,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   style: ElevatedButton.styleFrom(
              //                     shape: RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(15)),
              //                     // backgroundColor: bgColor,
              //                     shadowColor: TextColorBlue,
              //                   )),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5, horizontal: 5),
              //               child: ElevatedButton(
              //                   onPressed: () {},
              //                   child: const Text(
              //                     'Settings',
              //                     style: TextStyle(
              //                         color: TextColorBlue,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   style: ElevatedButton.styleFrom(
              //                     shape: RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(15)),
              //                     // backgroundColor: bgColor,
              //                     shadowColor: TextColorBlue,
              //                   )),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5, horizontal: 5),
              //               child: Obx(() => Switch(
              //                     value: _controller.currentTheme.value ==
              //                         ThemeMode.dark,
              //                     onChanged: (value) {
              //                       _controller.switchTheme();
              //                       Get.changeThemeMode(
              //                           _controller.currentTheme.value);
              //                     },
              //                     activeColor: CustomTheme.white,
              //                   )),
              //             )
              //           ],
              //         ),
              //         Row(
              //           children: [],
              //         ),

              //         Row(children: [
              //           // SizedBox(height: 10),
              //           Padding(
              //             padding: EdgeInsets.only(bottom: 20),
              //             child: Text('© Mahaputra Group 2024'),
              //           ),
              //         ])
              //         // TextField(
              //         //   decoration: InputDecoration(
              //         //     labelText: 'Enter your name',
              //         //     // TODO: add errorHint
              //         //   ),
              //         // ),
              //       ],
              //     ),

              //     // SizedBox(
              //     //   height: 30,
              //     // ),
              //     // Text(
              //     //   "LOGIN",
              //     //   textAlign: TextAlign.center,
              //     //   style: TextStyle(
              //     //     fontWeight: FontWeight.w900,
              //     //     fontSize: 30,
              //     //     color: textColor,
              //     //   ),
              //     // ),
              //     // Expanded(
              //     //   child: TextField(
              //     //     decoration: InputDecoration(
              //     //       constraints: BoxConstraints.tightFor(
              //     //         width: 200,
              //     //       ),
              //     //     ),
              //     //   ),
              //     // )
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Obx(
    //       () => Text(_controller.currentTheme.value == ThemeMode.dark
    //           ? "Dark Theme"
    //           : "Light Theme"),
    //     ),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           "Tap on the switch to change the Theme",
    //           style: TextStyle(fontSize: size.height * 0.02),
    //         ),
    //         Obx(
    //           () => Switch(
    //             value: _controller.currentTheme.value == ThemeMode.dark,
    //             onChanged: (value) {
    //               _controller.switchTheme();
    //               Get.changeThemeMode(_controller.currentTheme.value);
    //             },
    //             activeColor: CustomTheme.white,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
