import 'package:flutter/material.dart';
import '../main.dart';

class ProgressingSection extends StatelessWidget {
  final String courseName;
  final double deviceHeight;
  final double deviceWidth;
  
  ProgressingSection({
    super.key,
    required this.courseName,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: AppColor.greenTambourineTransparent,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: deviceHeight * 0.3,
      width: deviceWidth,
      child: Column(
        children: [
          Text(
            courseName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.greenTambourine,
                backgroundColor: AppColor.whiteColor),
            onPressed: () {},
            child: const Row(
              children: [
                Icon(Icons.play_arrow),
                Text('계속'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
