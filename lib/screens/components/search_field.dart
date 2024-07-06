import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/controllers/themeController.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return TextField(
      style: TextStyle(
          color:
              themeController.currentTheme.value ? Colors.white : TextColorBlue,
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
              borderSide: BorderSide(color: TextColorBlue, width: 3)),
          prefixIcon: Icon(
            Icons.search,
            color: TextColorBlue,
          ),
          labelText: 'Search Anything',
          labelStyle:
              new TextStyle(color: TextColorBlue, fontWeight: FontWeight.bold)),
      // decoration: InputDecoration(
      //     hoverColor: Theme.of(context).cardColor,
      //     hintText: "Search Anything's",
      //     helperStyle: TextStyle(
      //       color: Theme.of(context).hoverColor,
      //       fontSize: 15,
      //     ),
      //     fillColor: Theme.of(context).cardColor,
      //     filled: true,
      //     border: OutlineInputBorder(
      //         borderSide: BorderSide(color: Theme.of(context).hoverColor),
      //         borderRadius: BorderRadius.circular(10)),
      //     prefixIcon: Icon(
      //       Icons.search,
      //       color: !themeController.currentTheme.value
      //           ? TextColorBlue
      //           : Colors.white,
      //     )),
    );
  }
}
