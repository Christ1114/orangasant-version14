import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    // Activer le mode plein écran
    _enableFullScreenMode();

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

  void _enableFullScreenMode() {
    // Masquer les barres de statut et de navigation pour le mode plein écran
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          // Background image
          Align(
            alignment: Alignment
                .centerRight, // Aligner l'image au centre depuis la droite
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/img4.jpg'), // Chemin vers votre image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Foreground content
          Center(
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
                      fontSize: 15.0,
                      color: Colors
                          .white, // Assurer que le texte est visible sur l'image de fond
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
          ),
        ],
      ),
    );
  }
}
