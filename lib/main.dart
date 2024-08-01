import 'package:flutter/material.dart';
import 'package:oranga_sante1/screens/onboding/onbodingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oranga santé',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF273e32),
        primarySwatch: Colors.lightGreen,
      ),
      home: const OnbodingPageScreen(),
    );
  }
}
