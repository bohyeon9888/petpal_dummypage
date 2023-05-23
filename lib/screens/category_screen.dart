import 'package:flutter/material.dart';

import '../widgets/category_appbar.dart';
import '../widgets/navbar.dart';

class CategoryScreen extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  const CategoryScreen({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CategoryAppbar(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
      bottomNavigationBar: NavBar(
        currentIndex: 1,
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
      ),
    );
  }
}
