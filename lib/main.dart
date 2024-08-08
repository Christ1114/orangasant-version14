import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oranga_sante1/screens/onboding/onbodingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    );

    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oranga santé',
      theme: ThemeData(
        fontFamily: "Intel",
      ),
      home: const OnboardingPageScreen(),
    );
  }
}
