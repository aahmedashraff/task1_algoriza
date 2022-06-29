import 'package:flutter/material.dart';

class PhoneText extends StatelessWidget {
  const PhoneText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        floatingLabelStyle: TextStyle(fontSize: 25),
        // focusedBorder: none,
        enabled: true,
        enabledBorder: InputBorder.none,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintText: 'Enter Your Phone Number',
        hintStyle: TextStyle(fontSize: 14),
      ),
    );
  }
}
