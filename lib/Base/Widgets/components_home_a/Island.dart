import 'package:flutter/material.dart';

class ActiveIsland extends StatelessWidget {
  const ActiveIsland(
      {super.key,
      required this.theWidth,
      required this.theHeight,
      required this.avatarImagePath,
      required this.onProfileTap,
      required this.onSignInTap,
      required this.onSignUpTap,
      this.topOffset = 60.0});

  final double theWidth;
  final double theHeight;
  final String avatarImagePath;
  final VoidCallback onProfileTap;
  final VoidCallback onSignInTap;
  final VoidCallback onSignUpTap;
  final double topOffset;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: topOffset,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: onProfileTap,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(avatarImagePath),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: onSignInTap,
                    icon: const Icon(Icons.login, color: Colors.black),
                    label: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: onSignUpTap,
                    icon: const Icon(Icons.person_add, color: Colors.white),
                    label: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
