import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/Login.dart';
import 'package:project_erp/screens/components/analytic_cards.dart';
import 'package:project_erp/screens/components/custom_appbar.dart';
import 'package:project_erp/screens/components/top_referals.dart';
import 'package:project_erp/screens/components/users.dart';
import 'package:project_erp/screens/components/users_by_device.dart';
import 'package:project_erp/screens/components/viewers.dart';

import 'discussions.dart';

class LoginContent extends StatelessWidget {
  LoginContent({Key? key}) : super(key: key);
  final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 400, minWidth: 450),
      padding: EdgeInsets.all(appPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Login()],
          ),
        ],
        // child: SingleChildScrollView(
        //
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       // CustomAppbar(),
        //       // SizedBox(
        //       //   height: appPadding,
        //       // ),
        //       Row(
        //         // crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [Login()],
        //       ),
        //       Column(
        //         children: [
        //           Row(
        //             // crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Expanded(
        //                 flex: 5,
        //                 child: Column(
        //                   children: [
        //                     //  AnalyticCards(),   ->>>> Card Data Data subcribers dll saat mobile/desktop jadi 1
        //                     SizedBox(
        //                       height: appPadding,
        //                     ),

        //                     //Users(),
        //                     if (Responsive.isMobile(context))
        //                       SizedBox(
        //                         height: appPadding,
        //                       ),
        //                     if (Responsive.isMobile(context))
        //                       // Discussions(), ->> tampilan profil user saat mobile
        //                       //Text('ini data discussion mobile'),
        //                       Text('data')
        //                   ],
        //                 ),
        //               ),
        //               if (!Responsive.isMobile(context))
        //                 SizedBox(
        //                   width: appPadding,
        //                 ),
        //               if (!Responsive.isMobile(context))
        //                 Expanded(
        //                   flex: 2,
        //                   child: Text(''),
        //                   // child: Discussions(), -->tampilan profil user saat Desktop/tablet
        //                 ),
        //             ],
        //           ),
        //           Row(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Expanded(
        //                 flex: 5,
        //                 child: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: appPadding,
        //                     ),
        //                     Row(
        //                       children: [
        //                         if (!Responsive.isMobile(context))
        //                           Expanded(
        //                             child: Text(
        //                                 ''), //Ini Text Top Referals Desktop/tablet
        //                             // child: TopReferals(),
        //                             flex: 2,
        //                           ),
        //                         if (!Responsive.isMobile(context))
        //                           SizedBox(
        //                             width: appPadding,
        //                           ),
        //                         Expanded(flex: 3, child: Text('')
        //                             //Ini Viewers Dekstop
        //                             // child: Viewers(),
        //                             ),
        //                       ],
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                     ),
        //                     SizedBox(
        //                       height: appPadding,
        //                     ),
        //                     if (Responsive.isMobile(context))
        //                       SizedBox(
        //                         height: appPadding,
        //                       ),
        //                     if (Responsive.isMobile(context)) Text(''),
        //                     // TopReferals(),
        //                     //ini Top Referals Mobile
        //                     if (Responsive.isMobile(context))
        //                       SizedBox(
        //                         height: appPadding,
        //                       ),
        //                     if (Responsive.isMobile(context)) Text(''),
        //                     //Ini Users By Device Mobile
        //                     // UsersByDevice(),
        //                   ],
        //                 ),
        //               ),
        //               if (!Responsive.isMobile(context))
        //                 SizedBox(
        //                   width: appPadding,
        //                 ),
        //               if (!Responsive.isMobile(context))
        //                 Expanded(flex: 2, child: Text('')
        //                     //Ini Users by Device Dekstop
        //                     // child: UsersByDevice(),
        //                     ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
