import 'package:flutter/material.dart';
import 'package:panduan_navigator/halaman/beranda.dart';
import 'package:panduan_navigator/halaman/halaman1.dart';
import 'package:panduan_navigator/halaman/halaman2.dart';
import 'package:panduan_navigator/halaman/halaman3.dart';
import 'package:panduan_navigator/halaman/halaman4.dart';
import 'package:panduan_navigator/halaman/halaman5.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args= settings.arguments;
    switch (settings.name) {
      case '/':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Beranda());
        }
        return _errorRoute();
        break;
      case '/halaman1':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Halaman1(halaman1:args));
        }
        return _errorRoute();
        break;
      case '/halaman2':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Halaman2(halaman2:args));
        }
        return _errorRoute();
        break;
      case '/halaman3':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Halaman3(halaman3:args));
        }
        return _errorRoute();
        break;
      case '/halaman4':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Halaman4(halaman4:args));
        }
        return _errorRoute();
        break;
      case '/halaman5':
        if(args is String){
        return MaterialPageRoute(builder: (_)=> Halaman5(halaman5:args));
        }
        return _errorRoute();
        break;
      default:
      return _errorRoute();

    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text("Error Page", style: TextStyle(color: Colors.red,),),
      ));
    });
  }
}