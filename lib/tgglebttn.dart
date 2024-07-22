import 'package:bean_cart/buttoncontroller.dart';
import 'package:bean_cart/module/my_cart/view/mycart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tgglebttn extends StatefulWidget {
  const Tgglebttn({super.key});

  @override
  State<Tgglebttn> createState() => _TgglebttnState();
}

class _TgglebttnState extends State<Tgglebttn> {
  get isChecked => null;
  bool _isOn = true;

  @override
  Widget build(BuildContext context) {
    var bController = Get.put(Buttoncontroller());
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Switch(
                value: _isOn,
                onChanged: (value) {
                  setState(() {
                    _isOn = value;
                  });
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(const Mycart());
                },
                child: const Text('Page 2'))
          ],
        ),
      ),
    ));
  }
}
