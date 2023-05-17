import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  final String halaman2;
  const Halaman2({super.key, required this.halaman2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVIGATOR PUSH'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Image.asset('../images/menu.png'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Text(halaman2),
            ),
            SizedBox(
              height: 10.0,
            ),
            Image.asset('../images/teach2.webp', width: 150.0,)
          ],
        ),
      ),
    );
  }
}