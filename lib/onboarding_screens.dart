import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1_algoriza/content_model.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: OnBoard(
            skipButton: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(.8),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            imageHeight: 20,
            pageIndicatorStyle: const PageIndicatorStyle(
              width: 100,
              inactiveColor: Colors.blueAccent,
              activeColor: Colors.purpleAccent,
              inactiveSize: Size(8, 8),
              activeSize: Size(12, 12),
            ),
            nextButton: Column(
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  minWidth: 350,
                  color: Colors.blue.shade800,
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t you have an account? '),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            curve: Curves.bounceInOut,

            onBoardData: onBoardData,
            pageController: _pageController,
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
          )

              // PageView.builder(
              //   controller: controller,
              //   itemCount: contents.length,
              //   itemBuilder: (_, i) {
              //     return Padding(
              //       padding: const EdgeInsets.all(39.0),
              //       child: Column(
              //         children: [
              //           SvgPicture.asset(
              //             contents[i].image,
              //           ),
              //           Text(
              //             contents[i].title,
              //             style: const TextStyle(
              //               fontSize: 35,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           const SizedBox(height: 14),
              //           Text(
              //             contents[i].description,
              //             style: const TextStyle(
              //               fontSize: 18,
              //               color: Colors.grey,
              //             ),
              //           ),
              //           const SizedBox(height: 14),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               SmoothPageIndicator(
              //                 effect: const WormEffect(
              //                     dotHeight: 8,
              //                     dotWidth: 25,
              //                     type: WormType.normal),
              //                 controller: controller,
              //                 count: contents.length,
              //               ),
              //             ],
              //           ),
              //           const SizedBox(height: 150),
              //           //startButton
              //           MaterialButton(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             height: 60,
              //             minWidth: 900,
              //             color: Colors.blue.shade800,
              //             onPressed: () {},
              //             child: const Text(
              //               'Get Started',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               const Text('Dont\'t you have an account? '),
              //               GestureDetector(
              //                 onTap: () {},
              //                 child: Text(
              //                   ' login',
              //                   textAlign: TextAlign.start,
              //                   style: TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.blue.shade800,
              //                       fontWeight: FontWeight.bold),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              // ),
              ),
        ],
      ),
    );
  }
}
