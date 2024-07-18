import 'package:flutter/material.dart';

class Cartui extends StatelessWidget {
  const Cartui({super.key});

  @override
  Widget build(BuildContext context) {
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
                    title: const Text(
                      'Boat Earbuds',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('2500.0 Rs',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Text(
                      '-\$100.00',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
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
                      'Boat Earbuds',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('2500.0 Rs',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Text(
                      '-\$100.00',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
