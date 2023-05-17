import 'package:flutter/material.dart';

class Halaman5 extends StatelessWidget {
  final String halaman5;
  const Halaman5({super.key, required this.halaman5});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVIGATOR GENERATE ROUTE'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Image.asset('../images/send.png'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Text(halaman5),
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
