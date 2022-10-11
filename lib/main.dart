import 'package:flutter/material.dart';
import 'package:organicfood/gridview_demo.dart';
import 'package:organicfood/welcome_Page.dart';

import 'Manu.dart';
import 'detil_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetilPage(),
    );
  }
}
