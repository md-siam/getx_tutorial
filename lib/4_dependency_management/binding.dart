import 'package:get/get.dart';

import 'controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // lazyLoad a dependency only when is used.
    Get.lazyPut<Controller>(() => Controller());
    // Get.lazyPut<Controller>(
    // // method that will be executed when your class is executed
    // () => Controller()
    // // same as Get.put()
    // // tag: 'uniqueId' for lazyPut'
    // // It is similar to "permanent",
    // // recreate the instance from 'same place'
    // // if set to true, it will stay in the memory
    // fenix: false,
    // );

    // // an async method that will be executed to instantiate
    // Get.putAsync<AsyncTask>(
    //   () async {
    //     await Future.delayed(const Duration(seconds: 3));
    //     return AsyncTask();
    //   },
    //   // using Get.find<Controller>() with unique Id
    //   // tag: `uniqueId for putAsync`,
    //   // kept instance throughout the entire app
    //   permanent: false,
    // );

    // // Create new instance every time, not Singleton
    // Get.create<Controller>(
    //  // a function that return a class
    // () => Controller(),
    // // tag: 'uniqueId for create' 
    // Permanent: true,
    // );
  }
}
