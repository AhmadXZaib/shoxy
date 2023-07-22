import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';
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
    Future.delayed(
      const Duration(microseconds: 100),
      () {
        setState(() {
          update = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            top: update ? 200 : 500,
            left: 150,
            duration: const Duration(milliseconds: 1500),
            child: const AppText(
              text: 'Shoxy',
              fontSize: 30,
              color: AppColors.mainColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          Positioned(
            top: 350,
            left: 160,
            child: Visibility(
              visible: update,
              child: const CircularProgressIndicator(),
            ),
          ),
          AnimationWidgets(update: update),
        ],
      ),
    );
  }
}

class AnimationWidgets extends StatelessWidget {
  const AnimationWidgets({
    super.key,
    required this.update,
  });

  final bool update;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: update ? MediaQuery.of(context).size.height / 2 : 500,
      left: update ? MediaQuery.of(context).size.width / 2.5 : 100,
      // curve: Curves.decelerate,
      child: InkWell(
        onTap: () {
          // setState(() {
          //   update = !update;
          // });
        },
        child: AnimatedContainer(
          height: update ? 20 : 150,
          width: update ? 20 : 150,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
