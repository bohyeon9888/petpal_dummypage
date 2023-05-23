import 'package:flutter/material.dart';

import './section.dart';

class CategoryBody extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  
  CategoryBody({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Section(courseName: "Training", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            Section(courseName: "Body Language", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            Section(courseName: "Something", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            Section(courseName: "Extra", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
          ],
        ),
      ),
    );
  }
}
