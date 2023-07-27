import 'package:flutter/material.dart';
import 'package:shoxy/ubaid/core/utils/all_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({super.key});

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(
            height: 10,
          ),
          //.\For
          const Spacer(),
          SizedBox(
            height: 500,
            width: 340,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Page Change'),
                  ),
                );
              },
              itemCount: onboardList.length,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    ///Image
                    Image.asset(onboardList[i].imgPath),
                    //Big Text
                    Text(
                      onboardList[i].bigText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    // small Text
                    Text(
                      onboardList[i].smallText ?? '',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                );
              },
            ),
          ),
          const Spacer(),
          //For Button and indicator
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///indicator
                ///
                SmoothPageIndicator(
                    controller: pageController,
                    count: onboardList.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.blue,
                    )),

                const Spacer(),

                ///Button
                Container(
                  height: 64,
                  width: 190,
                  decoration: const BoxDecoration(
                    color: Color(0xff5B9EE1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    'Get Start',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 34,
          )
        ],
      ),
    );
  }
}

class OnBoardModel {
  String imgPath;
  String bigText;
  String? smallText;

  OnBoardModel({required this.imgPath, required this.bigText, this.smallText});
}

List<OnBoardModel> onboardList = [
  OnBoardModel(
      imgPath: AppImages.first,
      bigText: 'Start Journey With Nike',
      smallText: 'Smart, Gorgeous & Fashionable Collection'),
  OnBoardModel(
    imgPath: AppImages.second,
    bigText: 'Use PUMA for Better Experience',
  ),
  OnBoardModel(
    imgPath: 'assets/images/third.png',
    bigText: 'Have A Fun Shopping',
  ),
];
