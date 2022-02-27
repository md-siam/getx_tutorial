// Create controller class and extends GetxController
import 'package:get/get.dart';

class Controller extends GetxController {
  // with static method: Controller.to.increment();
  // with no static method: Get.find<Controller>().increment();
  static Controller get to => Get.find();

  int counter = 0;
  //final name = 'Ruize'.obs;

  void increment() {
    counter++;
    // use update() to update counter variable
    // on UI when increment be called
    update();
  }

  void decrement() {
    counter--;
    // use update() to update counter variable
    // on UI when decrement be called
    update();
  }
}
