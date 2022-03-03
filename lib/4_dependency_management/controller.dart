import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Class name can be anything
class Controller extends GetxController {
  // Declare the reactive variable
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated memory
    // usually for API calls
    debugPrint('Controller onInit been called');
  }

  @override
  void onReady() {
    super.onReady();
    // called after the widget is rendered on screen
    debugPrint('Controller onReady been called');
  }

  @override
  void onClose() {
    // called just before the Controller is deleted from memory
    debugPrint('Controller onClose been called');
    super.onClose();
  }
}
