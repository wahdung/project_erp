import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_erp/constants/constants.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.svgSrc,
      required this.colorIcon,
      required this.tap})
      : super(key: key);

  final String title, svgSrc;
  final Color colorIcon;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      
      leading: 
      SvgPicture.asset(
        svgSrc,
       color: colorIcon,
        height: 20,
        alignment: Alignment.centerRight,
      ),

      title: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold, color: TextColorBlue),
      ),

      onTap: (tap),
    );
  }
}
