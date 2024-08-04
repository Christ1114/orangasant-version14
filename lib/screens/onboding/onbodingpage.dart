import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:oranga_sante1/screens/home/homepage.dart';

class OnboardingPageScreen extends StatefulWidget {
  const OnboardingPageScreen({super.key});

  @override
  State<OnboardingPageScreen> createState() => _OnboardingPageScreenState();
}

class _OnboardingPageScreenState extends State<OnboardingPageScreen> {
  @override
  void initState() {
    super.initState();
    // Cette partie exécutera la navigation vers la page d'accueil après 20 secondes
    Timer(
      const Duration(seconds: 5),
      () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Homepagescreen()),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF273e32),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              "https://lottie.host/b4fc70ec-c1ed-4de0-98b7-c76e8df902c9/jwW87NPz7X.json",
              fit: BoxFit.contain,
              width: 150,
              height: 150,
              repeat: true,
            ),
          ],
        ),
      ),
    );
  }
}
