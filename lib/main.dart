import 'package:flutter/material.dart';
import './src/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Base',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff4e5983),
      ),
      home: Home(),
    );
  }
}
