import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';
import 'package:shoxy/ubaid/core/widgets/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(
          text: 'Home Screen',
          fontSize: 30,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
