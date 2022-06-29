import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    return Sizer(builder: (context, orientation, deviceType) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isGoogle ? Colors.blue.shade900 : Colors.transparent)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          width: double.infinity,
          height: 60,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: color,
            onPressed: () {},
            child: Text(
              lable,
              style: TextStyle(
                  color: isGoogle ? Colors.black : Colors.white,
                  fontSize: 15.sp),
            ),
          ),
        ),
      );
    });
  }
}
