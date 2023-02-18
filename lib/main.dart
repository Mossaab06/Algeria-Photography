import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'HomePage.dart';
import 'Pages/Gallery Model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photography',
      theme: ThemeData(),
      home: HomePage(),
     // Gallery(),
    );
  }
}
