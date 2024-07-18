import 'package:bean_cart/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cartui extends StatefulWidget {
  const Cartui({super.key});

  @override
  State<Cartui> createState() => _CartuiState();
}

class _CartuiState extends State<Cartui> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 115, top: 30, left: 15),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'My Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Card(
                  elevation: 0,
                  color: Colors.red[50],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Icon(
                          Icons.card_travel,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '   You have 3 items in your list chart',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset('assets/images/bean.png'),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Padding(
                        padding: EdgeInsets.only(right: 0.0),
                        child: Text(
                          'Indonesian Beans',
                          style: TextStyle(
                            color: Color(0xFF041444),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    subtitle: const Text('\$ 42.50',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    trailing: Row(
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
                  ),
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset('assets/images/bean.png'),
                    ),
                    title: const Text(
                      'Peru Beans',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(right: 40.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 0.0),
                            child: Text(
                              'beans-250g',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Padding(
                              padding: EdgeInsets.only(right: 0.0),
                              child: Text('\$60.00',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () {
                              controller.decrement1();
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 20),
                            )),
                        Obx(
                          () => Text('${controller.initialCount1}'),
                        ),
                        TextButton(
                            onPressed: () {
                              controller.increment1();
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Text(
                'Items',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                '\$ 102.50',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const ListTile(
              leading: Text(
                'Discount',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                '-\$ 3.00',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: Text(
                'Total',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                '\$ 99.50',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 75,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Checkout',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
