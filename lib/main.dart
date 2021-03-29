import 'package:flutter/material.dart';
import 'Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manu Demo',
      home: Splash(),
    );
  }
}
