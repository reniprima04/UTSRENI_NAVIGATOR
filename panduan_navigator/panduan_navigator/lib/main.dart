import 'package:flutter/material.dart';
import 'package:panduan_navigator/load.dart';
import 'package:panduan_navigator/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Load(),
      theme: ThemeData(
        fontFamily: 'Cambria',
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}