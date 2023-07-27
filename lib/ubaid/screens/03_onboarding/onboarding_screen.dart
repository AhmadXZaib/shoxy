import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(const Duration(seconds: 1), (timer) {
  //     controller.nextPage(
  //       duration: const Duration(milliseconds: 300),
  //       curve: Curves.decelerate,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              controller: controller,
              children: [
                Container(
                  height: 30,
                  width: 59,
                  color: Colors.cyan,
                ),
                Scr2(),
                Scr3(),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn);
            },
            icon: const Icon(
              Icons.next_plan,
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
          ),
          const SizedBox(height: 40),
          const Divider(),
          const SizedBox(height: 40),
          Expanded(
            child: PageView.builder(
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(myList[index].imagPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Scr1 extends StatelessWidget {
  const Scr1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFEFEFEF),
      ),
    );
  }
}

class Scr2 extends StatelessWidget {
  const Scr2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFAEAEAE),
      ),
    );
  }
}

class Scr3 extends StatelessWidget {
  const Scr3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFD3E456),
      ),
    );
  }
}

List<Model> myList = [
  Model(
      imagPath: AppImages.first,
      bigText: 'Start Journey With Nike',
      smallText: 'Smart, Gorgeous & Fashionable Collection'),
  Model(
      imagPath: AppImages.second,
      bigText: 'Let\'s See the Arrivals',
      smallText: 'Fashionalble New Shoes'),
  Model(
      imagPath: AppImages.third,
      bigText: 'Shop Now',
      smallText: 'From Our Lattest Market'),
];

class Model {
  String imagPath;
  String bigText;
  String smallText;

  Model({
    required this.imagPath,
    required this.bigText,
    required this.smallText,
  });
}
