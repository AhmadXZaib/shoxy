import 'package:flutter/material.dart';
import 'package:shoxy/ahmad/utils/all_constant1.dart';
import 'package:shoxy/ahmad/utils/app_color1.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText1(
          text: 'Login Screen',
          fontsize: 30,
          color: AppColor1.mainColor,
        ),
      ),
    );
  }
}
