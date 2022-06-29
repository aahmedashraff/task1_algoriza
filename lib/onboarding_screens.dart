import 'package:flutter/material.dart';
import 'package:task1_algoriza/content_model.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:task1_algoriza/register_screen.dart';

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

              pageIndicatorStyle: PageIndicatorStyle(
                width: 100,
                inactiveColor: Colors.blueAccent,
                activeColor: Colors.blue.shade900,
                inactiveSize: const Size(8, 8),
                activeSize: const Size(12, 12),
              ),
              nextButton: Column(
                children: [
                  Expanded(
                    child: MaterialButton(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t you have an account? ',
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
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

              onBoardData: onBoardData,
              pageController: _pageController,
              // Either Provide onSkip Callback or skipButton Widget to handle skip state
            ),
          ),
        ],
      ),
    );
  }
}
