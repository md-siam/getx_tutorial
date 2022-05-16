import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() async {
  // await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices(); // AWAIT SERVICES INITIALIZATION
  runApp(const MyApp());
}

Future<void> initServices() async {
  debugPrint('starting services...');
  // Here is where you put get_storage, hive, shared_pref initialization
  // or moor connection, or whatever that's async.
  await Get.putAsync(() => SettingsService().init());
  debugPrint('services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Tutorial',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //home: const MyGetNavigation(),
      //home: ReactiveStateManagement(),
      //home: const SimpleStateManagement(),
      //home: GetXControllerExample(),
      //home: GetXControllerExample(),
      //home: DependencyManagementExample(),
      //home: const TranslationExample(),
      //home: ThemesExample(),
      home: const ServiceExample(),
    );
  }
}
