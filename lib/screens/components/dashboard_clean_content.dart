import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/Login.dart';
import 'package:project_erp/screens/components/analytic_cards.dart';
import 'package:project_erp/screens/components/bottom_navigation.dart';
import 'package:project_erp/screens/components/custom_appbar.dart';
import 'package:project_erp/screens/components/top_referals.dart';
import 'package:project_erp/screens/components/users.dart';
import 'package:project_erp/screens/components/users_by_device.dart';
import 'package:project_erp/screens/components/viewers.dart';

import 'discussions.dart';

class DashboardCleanContent extends StatelessWidget {
  DashboardCleanContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeController = Get.put(GetThemeController());
    final themeController = Get.find<GetThemeController>();

    return Container(
      // key: themeController.scaffoldKey,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(appPadding),
          child: Column(
            children: [
              CustomAppbar(),
              SizedBox(
                height: appPadding,
              ),
              Column(
                children: [
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Expanded(
                  //       flex: 5,
                  //       child: Column(
                  //         children: [
                  //           //  AnalyticCards(),   ->>>> Card Data Data subcribers dll saat mobile/desktop jadi 1
                  //           SizedBox(
                  //             height: appPadding,
                  //           ),

                  //           //Users(),
                  //           if (themeController.Mobile(context))
                  //             SizedBox(
                  //               height: appPadding,
                  //             ),
                  //           if (themeController.Mobile(context))
                  //             // Discussions(), ->> tampilan profil user saat mobile
                  //             Text('ini data discussion mobile'),
                  //         ],
                  //       ),
                  //     ),
                  //     if (!themeController.Mobile(context))
                  //       SizedBox(
                  //         width: appPadding,
                  //       ),
                  //     if (!themeController.Mobile(context))
                  //       Expanded(
                  //         flex: 2,
                  //         child: Text('ini data disscution desktop'),
                  //         // child: Discussions(), -->tampilan profil user saat Desktop/tablet
                  //       ),
                  //   ],
                  // ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Expanded(
                  //       flex: 5,
                  //       child: Column(
                  //         children: [
                  //           SizedBox(
                  //             height: appPadding,
                  //           ),
                  //           Row(
                  //             children: [
                  //               if (!themeController.Mobile(context))
                  //                 Expanded(
                  //                   child: Text(
                  //                       'Ini Text Top Referals Desktop/tablet'),
                  //                   // child: TopReferals(),
                  //                   flex: 2,
                  //                 ),
                  //               if (!themeController.Mobile(context))
                  //                 SizedBox(
                  //                   width: appPadding,
                  //                 ),
                  //               Expanded(
                  //                   flex: 3, child: Text('Ini Viewers Dekstop')
                  //                   // child: Viewers(),
                  //                   ),
                  //             ],
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //           ),
                  //           SizedBox(
                  //             height: appPadding,
                  //           ),
                  //           if (themeController.Mobile(context))
                  //             SizedBox(
                  //               height: appPadding,
                  //             ),
                  //           if (themeController.Mobile(context))
                  //             Text('ini Top Referals Mobile'),
                  //           // TopReferals(),
                  //           if (themeController.Mobile(context))
                  //             SizedBox(
                  //               height: appPadding,
                  //             ),
                  //           if (themeController.Mobile(context))
                  //             Text('Ini Users By Device Mobile'),
                  //           // UsersByDevice(),
                  //         ],
                  //       ),
                  //     ),
                  //     if (!themeController.Mobile(context))
                  //       SizedBox(
                  //         width: appPadding,
                  //       ),
                  //     if (!themeController.Mobile(context))
                  //       Expanded(
                  //           flex: 2, child: Text('Ini Users by Device Dekstop')
                  //           // child: UsersByDevice(),
                  //           ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
