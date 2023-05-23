import 'package:flutter/material.dart';

import 'package:petpal_dummy/main.dart';
import '../screens/home_screen.dart';
import '../screens/category_screen.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final double deviceWidth;
  final double deviceHeight;
  NavBar({
    required this.currentIndex,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        if (currentIndex != 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
        break;
      case 1:
        if (currentIndex != 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => CategoryScreen(deviceHeight: deviceHeight, deviceWidth: deviceWidth)),
          );
        }
        break;
      case 2:
        if (currentIndex != 2) {}
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps_rounded),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      backgroundColor: AppColor.whiteColor,
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
      selectedItemColor: AppColor.greenTambourine,
    );
  }
}
