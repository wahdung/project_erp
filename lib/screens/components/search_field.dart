import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/controllers/themeController.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
  final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hoverColor: Theme.of(context).cardColor,
          hintText: "Search Anything's",
          helperStyle: TextStyle(
            color: Theme.of(context).hoverColor,
            fontSize: 15,
          ),
          fillColor: Theme.of(context).cardColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hoverColor),
              borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(
            Icons.search,
            color: themeController.currentTheme == ThemeMode.light
                ? TextColorBlue
                : Colors.white,
          )),
    );
  }
}
