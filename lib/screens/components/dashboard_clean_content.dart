import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:intl/intl.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:project_erp/screens/components/Login.dart';
import 'package:project_erp/screens/components/analytic_cards.dart';
import 'package:project_erp/screens/components/bottom_navigation.dart';
import 'package:project_erp/screens/components/chart_line_2.dart';
import 'package:project_erp/screens/components/chart_line_3.dart';
import 'package:project_erp/screens/components/chart_sample.dart';

import 'package:project_erp/screens/components/custom_appbar.dart';
import 'package:project_erp/screens/components/theme.dart';
import 'package:project_erp/screens/components/top_referals.dart';
import 'package:project_erp/screens/components/users.dart';
import 'package:project_erp/screens/components/users_by_device.dart';
import 'package:project_erp/screens/components/viewers.dart';
import 'package:provider/provider.dart';

import 'discussions.dart';

class DashboardCleanContent extends StatelessWidget {
  DashboardCleanContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeController = Get.put(GetThemeController());
    final themeController = Get.find<GetThemeController>();
    List<String> items = [
      'Daily',
      'Monthly',
      'Yearly',
    ];
    // String selectedValue = "Daily";
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(5),
            constraints: BoxConstraints.tightForFinite(),
            decoration: BoxDecoration(),
          ),
          SizedBox(
            height: appPadding,
          ),
          Obx(
            () => Visibility(
              visible: themeController.visibleDashboard.value,
              child: Wrap(
                spacing: 120,
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Container(
                      width: 500,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Filter :',
                            style: TextStyle(
                                color: TextColorBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    dropdownStyleData: DropdownStyleData(
                                        elevation: 1,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    style: TextStyle(
                                        color: TextColorBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: TextColorBlue, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    hint: Text(
                                      "Sort By",
                                      style: TextStyle(
                                          color: TextColorBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    items: items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                                value: item, child: Text(item)))
                                        .toList(),
                                    value: themeController
                                                .selectedValue.value ==
                                            ""
                                        ? null
                                        : themeController.selectedValue.value,
                                    onChanged: (NewValue) {
                                      print(NewValue);
                                      themeController.selectedValue.value =
                                          NewValue.toString();
                                      // themeController.selectedValue.value = "Daily";
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    readOnly: true,
                                    onSubmitted: (date) {
                                      Text(date);
                                    },
                                    onTap: () async {
                                      final date = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime(
                                              DateTime.now().year - 10, 1),
                                          initialDate: DateTime.now(),
                                          lastDate: DateTime(20100));
                                      if (date != null) {
                                        var formatdate =
                                            DateFormat.yMd().format(date);
                                        print(formatdate);
                                        themeController.dateValue.value =
                                            formatdate;
                                      }
                                    },
                                    decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                            color: TextColorBlue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        labelText: themeController
                                                    .dateValue.value !=
                                                ""
                                            ? themeController.dateValue.value
                                                .toString()
                                            : 'DATE',
                                        filled: true,
                                        prefixIcon: Icon(
                                          Icons.calendar_today,
                                          color: TextColorBlue,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: TextColorBlue, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                  ))
                            ],
                          )
                          // Text('login untuk masuk sistem'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 500,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Report :',
                            style: TextStyle(
                                color: TextColorBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: 450,
                                  height: 50,
                                  child: TextField(
                                    readOnly: true,
                                    onSubmitted: (date) {
                                      Text(date);
                                    },
                                    onTap: () async {
                                      final date = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime(
                                              DateTime.now().year - 10, 1),
                                          initialDate: DateTime.now(),
                                          lastDate: DateTime(20100));
                                      if (date != null) {
                                        var formatdate =
                                            DateFormat.yMd().format(date);
                                        print(formatdate);
                                        themeController.dateValue.value =
                                            formatdate;
                                      }
                                    },
                                    decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                            color: TextColorBlue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                        labelText: themeController
                                                    .dateValue.value !=
                                                ""
                                            ? themeController.dateValue.value
                                                .toString()
                                            : 'DATE',
                                        filled: true,
                                        prefixIcon: Icon(
                                          Icons.calendar_today,
                                          color: TextColorBlue,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: TextColorBlue, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => Visibility(
              visible: themeController.visibleDashboard.value,
              child: Wrap(
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CHART 1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(
                        width: 470,
                        height: 300,
                        child:
                            // Text("")
                            ChartLine2(),
                      ),
                    ]),
                  ),
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CHART 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(width: 470, height: 300, child: ChartLine3())
                      // ChartLine3()),
                    ]),
                  ),
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CHART 3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(width: 470, height: 300, child: ChartLine3())
                      // ChartLine3()),
                    ]),
                  ),
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 6,
                    color: Theme.of(context).cardColor,
                    shadowColor: TextColorBlue,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CHART 4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Container(
                          width: 470, height: 300, child: LineChartSample2())
                      // ChartLine3()),
                    ]),
                  ),
                  Container(
                    width: 500,
                    height: 300,
                    child: LineChartSample2(),
                  ),
                  Container(
                    width: 500,
                    height: 300,
                    child: LineChartSample2(),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => Visibility(
              visible: themeController.visibleSetting.value,
              child: Card(
                margin: EdgeInsets.all(20),
                elevation: 6,
                color: Theme.of(context).cardColor,
                shadowColor: TextColorBlue,
                child: Wrap(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                        width: double.infinity,
                      ),
                      Text(
                        'TAMBAH DATA CUSTOMER',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 2160,
                      ),
                    ],
                  ),
                  Container(child: Text("")
                      // ChartLine2(),
                      ),
                ]),
              ),
            ),
          ),
        ]),
      ),
    ));
    // Obx(() => Visibility(
    //           visible: themeController.visibleSetting.value,
    //           child: Container(
    //             constraints: BoxConstraints(minHeight: 300, minWidth: 400),
    //             decoration: BoxDecoration(
    //                 color: Theme.of(context).cardColor,
    //                 borderRadius: BorderRadius.circular(10),
    //                 border: Border.all(color: TextColorBlue, width: 10)),
    //             child: Container(
    //               constraints: BoxConstraints(minWidth: 100, minHeight: 30),
    //               child: Row(
    //                 children: [
    //                   SizedBox(
    //                     height: 50,
    //                   ),
    //                   SizedBox(
    //                     height: 30,
    //                   ),
    //                   Row(
    //                     children: [],
    //                   ),
    //                   Row(
    //                     children: [],
    //                   ),
    //                   SizedBox(height: 10),
    //                   Row(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [],
    //                   ),
    //                   SizedBox(height: 50),
    //                   Row(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [],
    //                   ),
    //                   SizedBox(height: 20),
    //                   Row(children: [])
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ))

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
  }
}
