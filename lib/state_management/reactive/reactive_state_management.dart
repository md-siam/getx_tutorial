import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({Key? key}) : super(key: key);
  // // 1. The first is using Rx(Type).
  // // initial value is recommended, but not mandatory
  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>([]);
  // final myMap = RxMap<String, int>({});

  // // 2. The second is to use Rx and use Darts Generics, Rx<Type>
  // final name = Rx<String>('');
  // final isLogged = Rx<bool>(false);
  // final count = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final number = Rx<num>(0);
  // final items = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // // Custom classes - it can be any class, literally
  // final user = Rx<User>(User(name: 'Ruize', age: 30));

  // 3. The third, more practical, easier and preferred approach
  // just add .obs (observable) as a property of your value
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;
  // Custom classes - it can be any class, literally
  final user = User(name: 'Ruize', age: 30).obs;
  // Attribute inside User class is observer
  //final user = User();

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  void toUpper() {
    // // Attribute inside User class is observable
    // user.name.value = user.name.value.toUpperCase();
    // user.age.value++;
    // Entire class is observer
    // 1. User update method
    user.update((user) {
      user!.name = user.name.toUpperCase();
      user.age = user.age + 1;
    });
    // // 2. An alternative way to update the user variable
    // user(User(name: 'RUIZE'));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Reactive State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${count.value}',
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              Obx(
                () => Text(
                  // 'Name: ${user.name.value} Age: ${user.age.value}',
                  // Entire class is observable
                  'Name: ${user.value.name}, Age: ${user.value.age}',
                  style: const TextStyle(fontSize: 28),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => decrement(),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => increment(),
            ),
            const SizedBox(width: 20),
            // Attribute inside User class is observer
            FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () => toUpper(),
            ),
          ],
        ),
      ),
    );
  }
}
