import 'package:flutter/material.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';
import 'package:project_erp/screens/components/profile_info.dart';
import 'package:project_erp/screens/components/search_field.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<Controller>().controlMenu,
            icon: Icon(Icons.menu,color: textColor.withOpacity(0.5),),
          ),
        Expanded(child: SearchField()),
        ProfileInfo()
      ],
    );
  }
}
