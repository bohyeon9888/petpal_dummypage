import 'package:flutter/material.dart';

import './progressing_section.dart';

class HomeBody extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  
  HomeBody({
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
            ProgressingSection(courseName: "Training", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            ProgressingSection(courseName: "Body Language", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            ProgressingSection(courseName: "Something", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            ProgressingSection(courseName: "Extra", deviceHeight: deviceHeight, deviceWidth: deviceWidth),
          ],
        ),
      ),
    );
  }
}
