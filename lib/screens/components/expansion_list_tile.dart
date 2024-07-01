import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/screens/components/drawer_list_tile.dart';

class ExpansionListTile extends StatelessWidget {
  const ExpansionListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.children,
    required DrawerListTile(),
    // required this.tap,
  }) : super(key: key);

  final String title, svgSrc;
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        // onTap: tap,
        // horizontalTitleGap: 0.0,
        // leading: SvgPicture.asset(
        //   svgSrc,
        //   color: grey,
        //   height: 20,
        //   alignment: Alignment.centerRight,
        // ),
        // title: Text(
        //   title,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(color: Colors.black),
        // ),

        leading: SvgPicture.asset(
          svgSrc,
          color: grey,
          height: 20,
          alignment: Alignment.centerRight,
        ),
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold, color: TextColorBlue),
        ),
        children: <Widget>[
          ListTile(
              // onTap: tap,
              // horizontalTitleGap: 0.0,
              // leading: SvgPicture.asset(
              //   svgSrc,
              //   color: grey,
              //   height: 20,
              //   alignment: Alignment.centerRight,
              // ),
              // title: Text(
              //   title,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(color: Colors.black),
              // ),
              contentPadding: EdgeInsets.only(left: 50),
              leading: SvgPicture.asset(
                svgSrc,
                color: grey,
                height: 20,
                alignment: Alignment.centerRight,
              ),
              title: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: TextColorBlue),
              ))
        ]);
  }
}
