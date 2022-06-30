import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:task1_algoriza/main_button.dart';
import 'package:task1_algoriza/text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_sharp)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 35.sp, color: Colors.blue.shade900),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/images/login.svg',
              height: 46.h,
            ),
            SizedBox(
              height: 2.h,
            ),
            const TextInput(
              lable: 'Email',
              isPass: false,
            ),
            SizedBox(
              height: 2.h,
            ),
            const TextInput(lable: 'Password', isPass: true),
            SizedBox(
              height: 2.h,
            ),
            MainButton(
              lable: 'Sign In',
              color: Colors.blue.shade900,
              isGoogle: false,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Use The App According to our policy to make sure that you are safe and secure all the time',
              style: TextStyle(
                fontSize: 11.sp,
                color: Colors.grey,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }
}
