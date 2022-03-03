import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'translations_controller.dart';

class TranslationView extends StatelessWidget {
  TranslationView({Key? key}) : super(key: key);

  final messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    var products = <String>[];
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Internationalization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 20),
            Text(
              'logged_in'
                  .trParams({'name': 'Siam', 'email': 'md.siam03@gmail.com'}),
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('English'),
              onPressed: () => messagesController.changeLanguage('en', 'US'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Bengali'),
              onPressed: () => messagesController.changeLanguage('bn', 'BN'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Spanish'),
              onPressed: () => messagesController.changeLanguage('es', 'ES'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('German'),
              onPressed: () => messagesController.changeLanguage('de', 'DE'),
            ),
          ],
        ),
      ),
    );
  }
}
