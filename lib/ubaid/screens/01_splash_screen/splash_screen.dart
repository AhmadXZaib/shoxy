import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';
import 'package:shoxy/ubaid/screens/02_login_screen/login_screen.dart';
import 'package:shoxy/ubaid/screens/03_home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final bool isLoggedIn = true;
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.flutter_dash,
              color: AppColors.mainColor,
              size: 80,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircularProgressIndicator(
              color: AppColors.mainColor,
              strokeWidth: 5,
            ),
          )
        ],
      ),
    );
  }
}
