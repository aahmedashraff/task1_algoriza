import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1_algoriza/login_screen.dart';
import 'package:task1_algoriza/main_button.dart';
import 'package:task1_algoriza/text_input.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'country_text_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 32,
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
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 35, color: Colors.blue.shade900),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/images/register.svg',
            height: 320,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: const TextInput(
                    lable: 'Email',
                    isPass: false,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 65,
                  width: 356,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 110),
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
                  // CountryCodePicker(
                  //   initialSelection: 'EG',
                  //   alignLeft: true,
                  // ),
                ),
                const SizedBox(height: 5),
                const TextInput(
                  lable: 'Password',
                  isPass: true,
                ),
                const SizedBox(height: 10),
                MainButton(
                  lable: 'Register',
                  isGoogle: false,
                  color: Colors.blue.shade900,
                ),
                const Text(
                  'Or',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account? ',
                      style: TextStyle(fontSize: 15),
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
                            fontSize: 15,
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
  }
}
