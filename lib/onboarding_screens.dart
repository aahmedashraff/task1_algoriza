import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task1_algoriza/content_model.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:task1_algoriza/login_screen.dart';
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
              onBoardData: onBoardData,
              pageController: _pageController,
              skipButton: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(.8),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
              ),

              pageIndicatorStyle: PageIndicatorStyle(
                width: 30.w,
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
                      height: 6.h,
                      minWidth: 350,
                      color: Colors.blue.shade800,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t you have an account? ',
                        style: TextStyle(fontSize: 11.sp),
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
                              fontSize: 13.sp,
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Either Provide onSkip Callback or skipButton Widget to handle skip state
            ),
          ),
        ],
      ),
    );
  }
}
