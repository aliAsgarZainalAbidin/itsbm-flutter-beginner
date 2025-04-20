import 'package:flutter/material.dart';

Widget sectionLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('assets/images/logo.png'),
      const SizedBox(
        width: 12,
      ),
      const Text(
        'TRACKIZER',
        style: TextStyle(
          fontFamily: 'inter',
          fontSize: 18,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget sectionBackground() {
  return Expanded(
    flex: 2,
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 100.0,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(150, 245, 113, 12),
                offset: Offset(100, 60),
                blurRadius: 1000,
                blurStyle: BlurStyle.normal,
                spreadRadius: 1.2,
              )
            ],
            shape: BoxShape.circle,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Image.asset(
            'assets/images/bg_welcome.png',
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Image.asset(
            'assets/images/bg_welcome_left.png',
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Image.asset(
            'assets/images/bg_welcome_right.png',
          ),
        ),
      ],
    ),
  );
}
