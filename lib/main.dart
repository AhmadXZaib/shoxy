import 'package:flutter/material.dart';
import 'package:shoxy/ahmad/screens/01_splash_screen1/splash_screen1.dart';
import 'package:shoxy/ubaid/screens/01_splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoxy',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen1(),
    );
  }
}
