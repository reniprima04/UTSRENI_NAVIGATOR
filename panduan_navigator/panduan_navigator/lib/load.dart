import 'package:flutter/material.dart';
import 'dart:async';
import 'package:panduan_navigator/halaman/beranda.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return Beranda();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "../images/logo.jpg",
                  height: 200.0,
                  width: 200.0,
                ),
                Text('BELAJAR NAVIGATOR'),
              ],
            ),
          )),
    );
  }
}
