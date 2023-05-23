import 'package:flutter/material.dart';
import '../main.dart';

class Section extends StatelessWidget {
  final String courseName;
  final double deviceHeight;
  final double deviceWidth;

  Section({
    super.key,
    required this.courseName,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          courseName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.greenTambourineTransparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: Size(deviceWidth, deviceHeight * 0.3),
        ),
      ),
    );
  }
}
