import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'onboarding_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnboardingScreen(),
          theme: ThemeData(fontFamily: 'Poppins'),
        );
      },
    );
  }
}
