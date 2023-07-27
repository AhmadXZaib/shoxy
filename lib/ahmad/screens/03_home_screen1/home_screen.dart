import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  double height = 100;
  double wigth = 100;
  Color color = Colors.redAccent;
  BorderRadiusGeometry radiusGeometry =
      const BorderRadius.all(Radius.circular(40));

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        onBtnPressed();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Container'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Stack(children: [
        AnimatedPositioned(
          top: height,
          left: wigth,
          duration: const Duration(milliseconds: 300),
          child: AnimatedContainer(
            height: height,
            width: wigth,
            decoration:
                BoxDecoration(color: color, borderRadius: radiusGeometry),
            duration: const Duration(milliseconds: 400),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onBtnPressed(),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void onBtnPressed() {
    final random = Random();
    height = random.nextInt(300).toDouble();
    wigth = random.nextInt(300).toDouble();

    color = Color.fromRGBO(
        random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    radiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble());

    setState(() {});
  }
}
