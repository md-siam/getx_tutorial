import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'next_screen.dart';

class MyGetNavigation extends StatelessWidget {
  const MyGetNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      // unknownRoute: GetPage(name: '/notFound', page() => UnknownPage())
      getPages: [
        GetPage(name: '/', page: () => const MyGetNavigation()),
        GetPage(name: '/next', page: () => const NextScreen()),
      ],
      // If you want to listen Get events to trigger actions,
      // you can use routingCallback to it
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint('Open Ads');
        }
      },
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: const Text('GetX Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // To navigate to a new screen
                  var data = await Get.to(
                    // Using a widget function instead of a widget
                    // fully guarantees that the widget and its controllers
                    // will be removed from memory when they are no longer used.
                    () => const NextScreen(),
                    // transition: Transition.rightToLeft,
                    // duration: const Duration(seconds: 1),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.to()',
                  );
                  debugPrint(data);
                },
                child: const Text('Get.to(NextScreen())'),
              ),
              ElevatedButton(
                onPressed: () {
                  // To go to the next screen and no option to go back to
                  // the previous screen (for use in SplashScreen)
                  Get.off(
                    const NextScreen(),
                    arguments: 'Hello World from Get.off()',
                  );
                },
                child: const Text('Get.off(NextScreen())'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offAll(
                    const NextScreen(),
                    arguments: 'Hello World from Get.offAll()',
                  );
                },
                child: const Text('Get.offAll(NextScreen())'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/next',
                    arguments: 'Hello World from Get.toNamed("/next")',
                  );
                },
                child: const Text('Get.toNamed("/next")'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(
                    '/next',
                    arguments: 'Hello World from Get.offNamed("/next")',
                  );
                },
                child: const Text('Get.offNamed("/next")'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(
                    '/next',
                    arguments: 'Hello World from Get.offAllNamed("/next")',
                  );
                },
                child: const Text('Get.offAllNamed("/next")'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
