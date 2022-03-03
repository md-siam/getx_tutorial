import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Tutorial',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //home: const GetNavigation(),
      //home: ReactiveStateManagement(),
      //home: const SimpleStateManagement(),
      //home:  GetXControllerExample(),
      // home:  GetXControllerExample(),
      //home: DependencyManagementExample(),
      //home: const TranslationExample(),
      home: ThemesExample(),
    );
  }
}
