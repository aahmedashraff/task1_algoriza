import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String lable;
  final bool isPass;
  const TextInput({
    Key? key,
    required this.lable,
    required this.isPass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: const TextStyle(),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(fontSize: 25),
          labelText: lable,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          hintText: 'Enter Your $lable',
          hintStyle: const TextStyle(fontSize: 14),
        ),
        obscureText: isPass ? true : false,
      ),
    );
  }
}
