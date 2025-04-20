import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
