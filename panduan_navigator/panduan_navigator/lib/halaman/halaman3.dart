import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  final String halaman3;
  const Halaman3({super.key, required this.halaman3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAVIGATOR POP'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context, 'Terima Kasih sudah meluangkan waktu untuk membaca');
          }, icon: Image.asset('../images/music.png'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Text(halaman3),
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