import 'package:flutter/material.dart';
import 'package:panduan_navigator/halaman/panduan.dart';
import 'package:panduan_navigator/halaman/halaman3.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
    Future<void> _navigateScreen(BuildContext context, String s, {required String arguments}) async {
    final result = await Navigator.pushNamed(
        context, '/halaman3',
                      arguments: halaman3);

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.all(20.0),
                elevation: 20.0,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Image.asset('../images/bg2.jpg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Text(
                        'BELAJAR\nNAVIGATOR',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman1',
                      arguments: halaman1);
                    },
                    child: Card(
                      color: Colors.orange,
                      elevation: 50.0,
                      child: ListTile(
                        leading: Image.asset(
                          '../images/add.png',
                          height: 30.0,
                        ),
                        title: Text(
                          'Push Replacement',
                          textAlign: TextAlign.end,
                        ),
                        subtitle: Text(
                          '~ selengkapnya',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman2',
                      arguments: halaman2);
                    },
                    child: Card(
                      color: Colors.green,
                      elevation: 50.0,
                      child: ListTile(
                        leading: Image.asset(
                          '../images/menu.png',
                          height: 30.0,
                        ),
                        title: Text(
                          'Push',
                          textAlign: TextAlign.end,
                        ),
                        subtitle: Text(
                          '~ selengkapnya',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      _navigateScreen(context, '/halaman3', arguments: halaman3);
                    },
                    child: Card(
                      color: Colors.blue,
                      elevation: 50.0,
                      child: ListTile(
                        leading: Image.asset(
                          '../images/music.png',
                          height: 30.0,
                        ),
                        title: Text(
                          'Pop',
                          textAlign: TextAlign.end,
                        ),
                        subtitle: Text(
                          '~ selengkapnya',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman4',
                      arguments: halaman4);
                    },
                    child: Card(
                      color: Colors.purple,
                      elevation: 50.0,
                      child: ListTile(
                        leading: Image.asset(
                          '../images/right.png',
                          height: 30.0,
                        ),
                        title: Text(
                          'Push Named',
                          textAlign: TextAlign.end,
                        ),
                        subtitle: Text(
                          '~ selengkapnya',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman5',
                      arguments: halaman5);
                    },
                    child: Card(
                      color: Colors.red,
                      elevation: 50.0,
                      child: ListTile(
                        leading: Image.asset(
                          '../images/send.png',
                          height: 30.0,
                        ),
                        title: Text(
                          'Generate Route',
                          textAlign: TextAlign.end,
                        ),
                        subtitle: Text(
                          '~ selengkapnya',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
