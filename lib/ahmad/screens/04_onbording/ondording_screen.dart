import 'dart:async';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreen1 extends StatefulWidget {
  const OnBordingScreen1({super.key});

  @override
  State<OnBordingScreen1> createState() => _OnBordingScreen1State();
}

class _OnBordingScreen1State extends State<OnBordingScreen1> {
  final repeatableController = RepeatablePageController();
  final regularController = PageController();

  @override
  void initState() {
    super.initState();
    repeatableController.start();
  }

  @override
  void dispose() {
    repeatableController.stop();
    regularController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(
  //     const Duration(seconds: 3),
  //     (timer) {
  //       controller.nextPage(
  //           duration: const Duration(milliseconds: 500),
  //           curve: Curves.bounceOut);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              width: double.infinity,
              child: PageView(
                // controller: repeatableController,
                children: const [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1484810/pexels-photo-1484810.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(23),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    ),
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: repeatableController,
              count: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView.builder(
                controller: repeatableController,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    width: 300,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(myList[index].imgPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          myList[index].ftblrName,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          myList[index].rank.toString(),
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: repeatableController,
              count: myList.length,
            )
          ],
        ),
      ),
    );
  }
}

List<FootballerModel> myList = [
  FootballerModel(
    imgPath:
        'https://media.guim.co.uk/eb9f71303753292960212576e6db123d99138a96/0_23_3500_2101/500.jpg',
    ftblrName: 'Robert Lewandowski',
    rank: 1,
  ),
  FootballerModel(
    imgPath:
        'https://media.guim.co.uk/93b20af79ece9134319fcfa8ae5ef245441c578f/0_123_2048_1229/500.jpg',
    ftblrName: 'Lionel Messi',
    rank: 2,
  ),
  FootballerModel(
    imgPath:
        'https://media.guim.co.uk/df77f4c4068f4c1dd35e67a4d1b2ccce17eedd8c/0_220_3543_2125/500.jpg',
    ftblrName: 'Mohamed Salah',
    rank: 3,
  ),
];

class FootballerModel {
  String imgPath;
  String ftblrName;
  int rank;

  FootballerModel({
    required this.imgPath,
    required this.ftblrName,
    required this.rank,
  });
}

class RepeatablePageController extends PageController {
  Timer? _timer;
  int _currentPage = 0;
  bool _forward = true;

  void start() {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        if (_forward) {
          nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceOut,
          );
          _currentPage++;
          if (_currentPage >= 2) {
            _forward = false;
            _currentPage = 0;
          }
        } else {
          // previousPage(
          //   duration: const Duration(milliseconds: 500),
          //   curve: Curves.bounceOut,
          // );
          // _currentPage--;
          if (_currentPage <= 0) {
            _forward = true;
          }
        }

        // Add this block to reset to index 1 when reaching the last page.
        // if (_currentPage >= 2) {
        //   _currentPage = 0;
        // }
      },
    );
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }
}
