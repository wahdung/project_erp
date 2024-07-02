import 'package:flutter/material.dart';
import 'package:project_erp/constants/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

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
            color: Theme.of(context).hoverColor,
          )),
    );
  }
}
