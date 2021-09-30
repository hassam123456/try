import 'package:flutter/material.dart';
import 'package:news_demo_livestream/pages/homepage.dart';
import 'package:news_demo_livestream/stack.dart';

import 'Forms.dart';
import 'TabBar/TapBar.dart';
import 'demoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: tabBar(),
    );
  }
}
