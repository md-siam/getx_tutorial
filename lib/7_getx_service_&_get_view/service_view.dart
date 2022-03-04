import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_service.dart';

class ServiceView extends GetView<SettingsService> {
  const ServiceView({Key? key}) : super(key: key);

  // final controller = Get.find<SettingsService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Service')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Pressed ${controller.counter} times',
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Increment'),
              onPressed: () {
                controller.incrementCounter();
              },
            ),
            ElevatedButton(
              child: const Text('Reset Counter'),
              onPressed: () {
                controller.resetCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
