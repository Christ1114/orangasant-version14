import 'dart:ui';

import 'package:flutter/material.dart';

class Frostedglassbox1 extends StatelessWidget {
  const Frostedglassbox1(
      {super.key,
      required this.theWidth,
      required this.theHeight,
      required this.theChild});

  final double theWidth;
  final double theHeight;
  final Widget theChild;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white.withOpacity(0.1)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.green.withOpacity(0.5),
                      Colors.black.withOpacity(0.5),
                    ])),
          ),
          Center(
            child: theChild,
          )
        ]),
      ),
    );
  }
}
