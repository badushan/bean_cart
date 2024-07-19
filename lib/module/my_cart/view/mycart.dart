import 'package:bean_cart/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 20),
                    )),
                Obx(() => Text('${controller.initialCount}')),
                TextButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
