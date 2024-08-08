import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:oranga_sante1/screens/home/homepage.dart';

class OnboardingPageScreen extends StatefulWidget {
  const OnboardingPageScreen({super.key});

  @override
  State<OnboardingPageScreen> createState() => _OnboardingPageScreenState();
}

class _OnboardingPageScreenState extends State<OnboardingPageScreen> {
  bool _showText = false;

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 10),
      () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Homepagescreen()),
          );
        }
      },
    );
    Timer(
      const Duration(seconds: 1),
      () {
        if (mounted) {
          setState(() {
            _showText = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            "https://lottie.host/b4fc70ec-c1ed-4de0-98b7-c76e8df902c9/jwW87NPz7X.json",
            fit: BoxFit.contain,
            width: 100,
            height: 100,
            repeat: true,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: _showText,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white, // Assurer que le texte est visible
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'Votre santé à proximité.',
                    speed: const Duration(milliseconds: 150),
                  ),
                  WavyAnimatedText(
                    'Your health close at hand.',
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
