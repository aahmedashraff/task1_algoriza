import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1_algoriza/text_input.dart';

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
          const Text(
            'Register',
            style: TextStyle(fontSize: 35),
          ),
          SvgPicture.asset(
            'assets/images/register.svg',
            height: 390,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TextInput(
                  lable: 'Email',
                  isPass: false,
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: CountryCodePicker(
                    initialSelection: 'EG',
                    alignLeft: true,
                  ),
                ),
                const SizedBox(height: 15),
                const TextInput(
                  lable: 'Password',
                  isPass: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
