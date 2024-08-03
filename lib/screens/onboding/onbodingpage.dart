import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:oranga_sante1/screens/home/homepage.dart';

class OnbodingPageScreen extends StatefulWidget {
  const OnbodingPageScreen({super.key});
// this page used for screen_splash
  @override
  State<OnbodingPageScreen> createState() => _OnbodingPageScreenState();
}

class _OnbodingPageScreenState extends State<OnbodingPageScreen> {
  @override
  void initState() {
    super.initState();
    // this is the shift who will run the homepagescreen after
    Timer(
        const Duration(seconds: 20),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Homepagescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF273e32),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/files/Animation1.json',
                fit: BoxFit.contain,
                width: 500,
                height: 500,
                repeat: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
