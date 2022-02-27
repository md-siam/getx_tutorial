import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // // Reactive State Management
            // GetX<Controller>(
            //   init: Controller(),
            //   builder: (controller) => Text(
            //     '${controller.count.value}',
            //     style: const TextStyle(fontSize: 28),
            //   ),
            // ),
            // Obx(
            //   () => Text(
            //     '${controller.count.value}',
            //     style: const TextStyle(fontSize: 28),
            //   ),
            // ),

            // Simple State Management
            GetBuilder<Controller>(
              id: 'count1',
              // init: Controller(),
              builder: (controller) => Text(
                '${controller.count}',
                style: const TextStyle(fontSize: 28),
              ),
            ),
            // GetBuilder<Controller>(
            //   id: 'count2',
            //   init: Controller(),
            //   builder: (controller) => Text(
            //     '${controller.count}',
            //     style: const TextStyle(fontSize: 28),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Get.find<Controller>().increment(),
      ),
    );
  }
}
