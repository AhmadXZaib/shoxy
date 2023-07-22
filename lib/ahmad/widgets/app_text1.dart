import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppText1 extends StatelessWidget {
  const AppText1(
      {super.key,
      required this.text,
      this.fontsize,
      this.fontWeight,
      this.color});

  final String text;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
