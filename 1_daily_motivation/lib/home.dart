import 'dart:math';

import 'package:daily_motivation/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> motivations = [
    "Jangan menyerah, karena kamu lebih kuat dari yang kamu kira",
    "Kesuksesan dimulai dari mimpi",
    "Jangan pernah menyerah, karena Allah selalu bersamamu",
    "Kesuksesan adalah hasil dari kerja keras dan doa",
    "Jangan pernah menyerah, karena kamu adalah pemenang",
    "Setiap hari adalah kesempatan baru untuk meraih mimpi",
    "Jangan pernah menyerah, karena Allah selalu memberikan jalan keluar",
    "Usaha keras tidak akan menghianati hasil",
  ];

  String motivation = 'Tekan tombol untuk medapatkan motivasi!';
  int counter = 0;
  bool isShowDeveloperName = false;
  static const String appName = 'Daily Motivation';

  void changeMotivation() {
    setState(() {
      counter++;
      isShowDeveloperName = showDeveloperName();
      int index = Random().nextInt(motivations.length);
      motivation = motivations[index];
    });
  }

  bool showDeveloperName() {
    return counter % 5 == 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                motivation,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Jumlah klik: $counter',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: changeMotivation,
              child: const Text('Motivasi Saya!'),
            ),
            switch (isShowDeveloperName) {
              true => const Text(
                  AppStrings.developerName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              false => const SizedBox.shrink(),
            }
          ],
        ),
      ),
    );
  }
}
