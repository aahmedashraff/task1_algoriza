import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1_algoriza/main_button.dart';
import 'package:task1_algoriza/text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(left: 120),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 35, color: Colors.blue.shade900),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/images/login.svg',
            height: 350,
          ),
          const SizedBox(
            height: 25,
          ),
          const TextInput(lable: 'Email', isPass: false),
          const SizedBox(
            height: 25,
          ),
          const TextInput(lable: 'Password', isPass: true),
          const SizedBox(
            height: 25,
          ),
          MainButton(
              lable: 'Sign In', color: Colors.blue.shade900, isGoogle: false),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Use The App According to our policy to make sure that you are safe and secure all the time',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
