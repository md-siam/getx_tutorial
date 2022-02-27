import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // On your Stateless/Statefull class, use GetBuilder
              GetBuilder<Controller>(
                init: Controller(),
                // INIT IT ONLY THE FIRST TIME
                builder: (controller) => Text(
                  '${controller.counter}',
                  // ${Controller.to.counter},
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              // GetX<Controller>(
              // builder: (controller)=>Text(controller.name.value),
              // ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => Controller.to.decrement(),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => Controller.to.increment(),
            ),
          ],
        ),
      ),
    );
  }
}
