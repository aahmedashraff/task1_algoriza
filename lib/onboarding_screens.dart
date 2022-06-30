import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task1_algoriza/content_model.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:task1_algoriza/login_screen.dart';
import 'package:task1_algoriza/main_button.dart';
import 'package:task1_algoriza/register_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
                    MainButton(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      isGoogle: false,
                      color: Colors.blue.shade900,
                      lable: 'Get Started',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 3.w),
              child: Row(
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
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
