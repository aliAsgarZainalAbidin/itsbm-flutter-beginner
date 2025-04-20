import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ResponsiveDashboard(),
    );
  }
}
