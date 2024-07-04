import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/home.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/welcome_screen.dart';
// import '../../../Web-App/webapp1/lib/welcome_screen.dart';
import 'package:provider/provider.dart';
// import 'package:project_erp/screens/dash_board_screen.dart';
import 'package:project_erp/screens/dash_board_clean_screen.dart';
import 'package:project_erp/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final themeController = Get.put(GetThemeController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Responsive Admin Dashboard',
          debugShowCheckedModeBanner: false,
          theme:
              // themeController.loadThemeFromBox()
              themeController.currentTheme.value
                  ? CustomTheme.darkTheme
                  : CustomTheme.lightTheme,
          // themeMode: themeController.currentTheme.value
          //     ? ThemeMode.dark
          //     : ThemeMode.light,
          // darkTheme: CustomTheme.darkTheme,
          //     theme: AppTheme.light,
          // darkTheme: AppTheme.dark,
          // themeMode: Get.find<ThemeController>().isDarkMode.value
          //     ? ThemeMode.dark
          //     : ThemeMode.light,
          // theme: CustomTheme.lightTheme,
          // darkTheme: CustomTheme.darkTheme,
          // themeMode: themeController.theme,
          // theme: ThemeData(
          //     primarySwatch: Colors.blue,
          //     textTheme: GoogleFonts.poppinsTextTheme(
          //       Theme.of(context).textTheme,
          //     )),
          initialRoute: '/welcome',
          getPages: [
            GetPage(name: '/welcome', page: () => WelcomeScreen()),
            GetPage(
                name: '/login',
                page: () => LoginScreen(),
                transition: Transition.zoom),
            GetPage(name: '/dashboard', page: () => DashboardCleanScreen()),
          ],
        ));

    // MaterialApp(
    //   title: 'Responsive Admin Dashboard',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: MultiProvider(providers: [
    //     ChangeNotifierProvider(
    //       create: (context) => Controller(),
    //     )
    //   ], child: LoginScreen()
    //       // child: DashboardCleanScreen()
    //       ),
    // );
  }
}
