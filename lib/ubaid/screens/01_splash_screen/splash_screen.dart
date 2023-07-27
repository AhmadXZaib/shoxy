import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/widgets/app_text.dart';
import 'package:shoxy/ubaid/screens/02_login_screen/login_screen.dart';
import 'package:shoxy/ubaid/screens/03_home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final bool isLoggedIn = true;
  bool update = false;
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        if (isLoggedIn) {
          Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (_) => const HomeScreen(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (_) => const LoginScreen(),
            ),
          );
        }
      },
    );
    Future.delayed(
      const Duration(microseconds: 100),
      () {
        setState(() {
          update = true;
        });
      },
    );
    // setState(() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B9EE1),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1700),
            top: update ? 300 : 500,
            left: 150,
            child: const AppText(
              text: 'OXY BOOTS',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
