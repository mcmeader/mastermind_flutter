import 'package:flutter/material.dart';
import 'package:mastermind/screens/main_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: MainMenu(),
    );
  }
}
