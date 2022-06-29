import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color color;
  final String lable;
  final bool isGoogle;
  const MainButton({
    Key? key,
    required this.lable,
    required this.color,
    required this.isGoogle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: isGoogle ? Colors.blue : Colors.transparent)),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        minWidth: 350,
        color: color,
        onPressed: () {},
        child: Text(
          lable,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
