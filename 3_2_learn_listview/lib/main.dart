import 'package:flutter/material.dart';

void main() {
  runApp(ScrollingScreen());
}

class ScrollingScreen extends StatelessWidget {
  final List<String> alfabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
  ];

  ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: alfabet.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  alfabet[index],
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
