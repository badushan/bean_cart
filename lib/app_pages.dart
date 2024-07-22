import 'package:bean_cart/app_routes.dart';
import 'package:bean_cart/module/my_cart/view/mycart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const Mycart(),
    ),
  ];
}
