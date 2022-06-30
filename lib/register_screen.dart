import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:task1_algoriza/login_screen.dart';
import 'package:task1_algoriza/main_button.dart';
import 'package:task1_algoriza/text_input.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'country_text_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_sharp)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.h),
                  child: Text(
                    'Register',
                    style:
                        TextStyle(fontSize: 35.sp, color: Colors.blue.shade900),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/images/register.svg',
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const TextInput(
                    lable: 'Email',
                    isPass: false,
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.w, horizontal: 1.h),
                    height: 7.4.h,
                    width: 92.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: const PhoneText(),
                        ),
                        Row(
                          children: [
                            CountryListPick(
                              theme: CountryTheme(
                                isShowTitle: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  const TextInput(
                    lable: 'Password',
                    isPass: true,
                  ),
                  SizedBox(height: 3.h),
                  MainButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    lable: 'Register',
                    isGoogle: false,
                    color: Colors.blue.shade900,
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                  SizedBox(height: 1.h),
                  Stack(
                    children: [
                      const MainButton(
                        lable: 'Sign In With Google',
                        color: Colors.white,
                        isGoogle: true,
                      ),
                      //google/button
                      Positioned(
                          left: 50,
                          top: 11,
                          height: 40,
                          child: SvgPicture.asset('assets/images/google.svg')),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account? ',
                        style: TextStyle(fontSize: 11.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Text(
                          'Login Here!',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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
