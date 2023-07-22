import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoxy/ahmad/screens/02_login_screen1/login_screen1.dart';
import 'package:shoxy/ahmad/screens/03_home_screen1/home_screen.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  final bool isLogIn = true;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (isLogIn) {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (_) => const HomeScreen1(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(builder: (_) => const Login1()),
        );
      }
    });
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
              size: 130,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircularProgressIndicator(
              color: AppColors.mainColor,
            ),
          )
        ],
      ),
    );
  }
}
