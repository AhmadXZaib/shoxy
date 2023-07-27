import 'package:flutter/material.dart';
import 'package:shoxy/ahmad/screens/03_onbording/app_bar_a.dart';

import 'package:shoxy/ahmad/screens/03_onbording/ondording_screen.dart';
import 'package:shoxy/ahmad/screens/03_onbording/recovery_screen.dart';
import 'package:shoxy/ahmad/screens/03_onbording/signup_screen.dart';
import 'package:shoxy/ubaid/screens/03_onboarding/onboard.dart';

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
      home: const AppBarA(),
    );
  }
}
