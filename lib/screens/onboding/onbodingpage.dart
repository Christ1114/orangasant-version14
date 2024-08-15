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
      extendBodyBehindAppBar: true,
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
            "https://lottie.host/9c7e4df0-2929-474d-b7ff-2f88e21e4930/n0hECifel9.json",
            fit: BoxFit.contain,
            width: 200,
            height: 150,
            repeat: true,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: _showText,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'Votre santé à proximité.',
                    speed: const Duration(milliseconds: 151),
                  ),
                  WavyAnimatedText(
                    'Your health close at hand.',
                    speed: const Duration(milliseconds: 151),
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  ("Tap Event");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
