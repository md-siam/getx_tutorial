import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  // Find controller
  final controller = Get.find<Controller>();
  // final controller2 = Get.find<Controller>();
  // Controller controller = Get.find();
  // final child = Get.find<Parent>();

  @override
  Widget build(BuildContext context) {
    // debugPrint('is Children? ${child is Child}');

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${controller.count.value}',
                style: const TextStyle(fontSize: 28),
              ),
            ),
            // Obx(
            //   () => Text(
            //     '${controller2.count.value}',
            //     style: const TextStyle(fontSize: 28),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
