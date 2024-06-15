import 'package:flutter/material.dart';
import 'package:flutter_application/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text('My App'),
                bottom: const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'หน้าหลัก',
                  ),
                  Tab(
                    icon: Icon(Icons.event),
                    text: 'การแจ้งเตือน',
                  ),
                  Tab(
                    icon: Icon(Icons.extension),
                    text: 'มินิเกม',
                  ),
                ]),
              ),
              body: const TabBarView(children: [
                MyHome(),
                Icon(
                  Icons.event,
                  size: 50,
                ),
                Icon(
                  Icons.extension,
                  size: 50,
                ),
              ]),
            )));
  }
}
