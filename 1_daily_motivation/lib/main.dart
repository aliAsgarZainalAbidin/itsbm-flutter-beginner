import 'package:daily_motivation/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyMotivationApp());
}

class DailyMotivationApp extends StatelessWidget {
  const DailyMotivationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
