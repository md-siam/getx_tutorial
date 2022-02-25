import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Next Screen'),
            Text('argument: ${Get.arguments}'),
            ElevatedButton(
              onPressed: () {
                // To navigate to a new screen
                Get.back(
                  result: 'success',
                  // if your set [closeOverlays] to true, Get.back() will close
                  // the currently open snackbar/dialog/bottomsheet
                  closeOverlays: false,
                );
              },
              child: const Text('Get.back()'),
            ),
          ],
        ),
      ),
    );
  }
}
