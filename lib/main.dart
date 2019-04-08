import 'package:flutter/material.dart';
import './scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.orange, accentColor: Colors.orange),
      title: 'Wall-E',
      home: Scaff(),
    );
  }
}
