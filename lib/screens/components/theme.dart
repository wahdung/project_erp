import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/screens/welcome_screen.dart';
// import '../../../Web-App/webapp1/lib/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/controllers/getcontroller.dart';
// import 'package:project_erp/screens/dash_board_screen.dart';
import 'package:project_erp/screens/dash_board_clean_screen.dart';
import 'package:project_erp/screens/login_screen.dart';

class CustomTheme {
  static const lightThemeFont = "Poppins";
  static const darkThemeFont = "Poppins";

  // light theme
  static final lightTheme = ThemeData(
    hoverColor: Colors.white,
    shadowColor: Color.fromARGB(255, 80, 78, 78),
    primaryColor: Color.fromARGB(223, 255, 244, 244),
    // primaryColor: ThemeData.light().primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: white,
    useMaterial3: true,
    fontFamily: lightThemeFont,
    switchTheme: SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((states) => lightThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: white,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,
        color: black,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: lightThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );

  // dark theme
  static final darkTheme = ThemeData(
    hoverColor: Colors.white,
    primaryColor: black,
    shadowColor: TextColorBlue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: black,
    useMaterial3: true,
    fontFamily: darkThemeFont,
    switchTheme: SwitchThemeData(
      trackColor:
          MaterialStateProperty.resolveWith<Color>((states) => darkThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: black,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: white,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: darkThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: darkThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );

  // colors
  static Color lightThemeColor = Colors.red,
      white = Colors.white,
      black = Colors.black,
      darkThemeColor = Colors.yellow,
      grey = Colors.grey;
}
