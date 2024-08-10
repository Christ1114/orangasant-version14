import 'package:flutter/material.dart';
import 'package:oranga_sante1/screens/home_a/components/Frostedglassbox1.dart';
import 'package:oranga_sante1/screens/home_a/components/Island.dart';
import 'package:oranga_sante1/screens/log/sign-in/signin.dart';
import 'package:oranga_sante1/screens/log/sign-up/signup.dart';
import 'package:oranga_sante1/screens/profil/profil.dart';

class HomeApageScreen extends StatefulWidget {
  const HomeApageScreen({super.key});

  @override
  _HomeApageScreenState createState() => _HomeApageScreenState();
}

class _HomeApageScreenState extends State<HomeApageScreen>
    with SingleTickerProviderStateMixin {
  bool _isActiveIslandVisible = false;
  bool _isStartedButtonVisible = true;
  bool _isMessageVisible = false;

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _toggleActiveIsland() {
    setState(() {
      _isActiveIslandVisible = true;
      _isStartedButtonVisible = false;
      _isMessageVisible = true;
    });
    _controller.forward(); // Démarrer l'animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img3.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.green.withOpacity(0.3),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            child: Frostedglassbox1(
              theWidth: 350,
              theHeight: 400,
              theChild: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'ORANGA SANTE \n\n',
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' FIND THE HEAREST \n',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' HEALTH CENTER \n',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_isStartedButtonVisible)
            Positioned(
              bottom: 50,
              left: 90,
              child: ElevatedButton.icon(
                onPressed: _toggleActiveIsland,
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.black,
                ),
                label: const Text(
                  "Started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          if (_isMessageVisible)
            Positioned(
              bottom: 50,
              left: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: const Text(
                  "Sign in to discover our range \n of services!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          if (_isActiveIslandVisible)
            Align(
              alignment: Alignment.topCenter,
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: ActiveIsland(
                  theHeight: 130,
                  theWidth: 400,
                  avatarImagePath: 'assets/images/avatar.png',
                  onProfileTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilPage()));
                  },
                  onSignInTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  onSignUpTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
