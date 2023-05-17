import 'package:flutter/material.dart';

class Halaman1 extends StatelessWidget {
  final String halaman1;
  const Halaman1({super.key, required this.halaman1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVIGATOR PUSH REPLACEMENT'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Image.asset('../images/right.png'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Text(halaman1),
            ),
            SizedBox(
              height: 10.0,
            ),
            Image.asset('../images/teach1.jpg', width: 150.0,)
          ],
        ),
      ),
    );
  }
}