import 'package:flutter/material.dart';

class Halaman4 extends StatelessWidget {
  final String halaman4;
  const Halaman4({super.key, required this.halaman4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVIGATOR PUSH NAMED'),
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
              child: Text(halaman4),
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