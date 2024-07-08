import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:project_erp/controllers/themeController.dart';
import 'package:provider/provider.dart';
import 'package:project_erp/constants/constants.dart';
import 'package:project_erp/constants/responsive.dart';
import 'package:project_erp/controllers/controller.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({Key? key}) : super(key: key);
  // final themeController = Get.put(GetThemeController());

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<GetThemeController>();
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: HoverWidget(
                  child: Obx(() => IconButton(
                        onPressed: themeController.openDrawer,
                        icon: SvgPicture.asset(
                          "icons/Bell.svg",
                          height: 30,
                          color: !themeController.currentTheme.value
                              ? TextColorBlue
                              : Colors.white,
                        ),
                      )),
                ),
              ),
              Positioned(
                top: 10,
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: red,
                  ),
                ),
              )
            ],
          ),
        ),
        HoverWidget(
          child: Container(
            margin: EdgeInsets.only(left: appPadding),
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 15,
              bottom: 10,
            ),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'images/photo3.jpg',
                    height: 38,
                    width: 38,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                if (!Responsive.isMobile(context))
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: appPadding / 2),
                    child: Obx(() => Text(
                          'Hii, Gungwah',
                          style: TextStyle(
                            color: !themeController.currentTheme.value
                                ? TextColorBlue
                                : Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        )),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
