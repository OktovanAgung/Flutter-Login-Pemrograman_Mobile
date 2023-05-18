import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'components/center_widget/center_widget.dart';
import 'components/login_content.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -20 * math.pi / 90,
      child: Container(
        width: 1.3 * screenWidth,
        height: 1.0 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(170),
          gradient: const LinearGradient(
            begin: Alignment(-0.6, -1),
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(153, 199, 128, 250),
              Color.fromARGB(181, 157, 38, 243),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.6 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(1, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [
            Color.fromARGB(235, 149, 60, 212),
            Color.fromARGB(185, 189, 151, 216),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 232, 207, 250),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              left: -30,
              child: topWidget(screenSize.width),
            ),
            Positioned(
              bottom: -180,
              left: -40,
              child: bottomWidget(screenSize.width),
            ),
            CenterWidget(size: screenSize),
            const LoginContent(),
          ],
        ),
      ),
    );
  }
}
