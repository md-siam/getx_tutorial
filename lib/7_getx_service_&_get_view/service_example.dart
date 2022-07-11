import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'service_view.dart';

class ServiceExample extends StatelessWidget {
  const ServiceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ServiceView(),
    );
  }
}
