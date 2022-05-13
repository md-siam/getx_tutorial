import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class GetXControllerExample extends StatelessWidget {
  GetXControllerExample({Key? key}) : super(key: key);

  // final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Controller'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! Reactive State Management
              GetX<Controller>(
                init: Controller(),
                builder: (controller) => Text(
                  '${controller.count.value}',
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              // Obx(
              //   () => Text(
              //     '${controller.count.value}',
              //     style: const TextStyle(fontSize: 28),
              //   ),
              // ),

              //! Simple State Management
              // GetBuilder<Controller>(
              //   id: 'count1',
              //   init: Controller(),
              //   builder: (controller) => Text(
              //     '${controller.count}',
              //     style: const TextStyle(fontSize: 28),
              //   ),
              // ),
              // GetBuilder<Controller>(
              //   id: 'count2',
              //   init: Controller(),
              //   builder: (controller) => Text(
              //     '${controller.count}',
              //     style: const TextStyle(fontSize: 28),
              //   ),
              // ),
              // ElevatedButton(
              //   onPressed: () => Get.to(() => DetailPage()),
              //   child: const Text('Detail Page'),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Get.find<Controller>().increment(),
        ),
      ),
    );
  }
}
