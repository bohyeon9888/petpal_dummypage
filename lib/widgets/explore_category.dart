import 'package:flutter/material.dart';

import '../main.dart';

class ExploreCategory extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  final String title;
  const ExploreCategory({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: ElevatedButton(
        child: Text(
          title,
          style: TextStyle(color: AppColor.blackColor, fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
