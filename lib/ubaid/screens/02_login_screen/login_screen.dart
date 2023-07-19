import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/app_colors.dart';
import 'package:shoxy/ubaid/core/widgets/app_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(
          text: 'Login Screen',
          fontSize: 30,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
