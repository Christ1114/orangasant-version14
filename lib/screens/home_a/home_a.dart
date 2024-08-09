import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oranga_sante1/screens/home_a/components/Frostedglassbox1.dart';
import 'package:oranga_sante1/screens/home_a/components/Island.dart';
import 'package:oranga_sante1/screens/log/sign-in/signin.dart';
import 'package:oranga_sante1/screens/log/sign-up/signup.dart';
import 'package:oranga_sante1/screens/profil/profil.dart';

class HomeApageScreen extends StatelessWidget {
  const HomeApageScreen({super.key});

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
            bottom: 30, // Distance du bas de l'écran
            left: 0, // Distance du côté gauche de l'écran
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
                      text: ' HEALTH CENTER \n\n',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          " Sign up to take advantage of our \n platform's benefits. ",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
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
                          builder: (context) => const SingInPage()));
                },
                onSignUpTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
              )),
        ],
      ),
    );
  }
}
