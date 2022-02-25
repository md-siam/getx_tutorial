import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
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
      home: const SimpleStateManagement(),
    );
  }
}
