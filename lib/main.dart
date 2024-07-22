import 'package:bean_cart/app_pages.dart';
import 'package:bean_cart/cartui.dart';
import 'package:bean_cart/tgglebttn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Cartui(),
      getPages: AppPages.pages,
    );
  }
}
