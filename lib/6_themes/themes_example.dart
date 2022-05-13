import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'themes.dart';
import 'themes_controller.dart';
import 'themes_view.dart';

class ThemesExample extends StatelessWidget {
  ThemesExample({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // change themeMode instead of Theme
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: ThemesView(),
    );
  }
}
