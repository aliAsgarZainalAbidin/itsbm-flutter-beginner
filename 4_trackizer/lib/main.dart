import 'package:flutter/material.dart';
import 'package:trackizer/components.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 37),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 48),
            sectionLogo(),
            const SizedBox(height: 32),
            sectionBackground(),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Text(
                "Congue malesuada in ac justo, a tristique \nleo massa. Arcu leo leo urna risus.",
                style: TextStyle(
                  fontFamily: 'inter',
                  color: Colors.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 245, 113, 12),
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: 1.2,
                  )
                ]),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromARGB(255, 245, 113, 12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
              child: SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color.fromARGB(255, 47, 47, 57),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "I have an account",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
