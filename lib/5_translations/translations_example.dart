import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'messages.dart';
import 'translations_view.dart';

class TranslationExample extends StatelessWidget {
  const TranslationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // use custom translation
      translations: Messages(),
      // translations will be displayed in that locale
      locale: const Locale('en', 'US'),
      // system locale
      // locale: Get.deviceLocale,
      // specify the fallback locale in case an invalid locale
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: TranslationView(),
    );
  }
}
