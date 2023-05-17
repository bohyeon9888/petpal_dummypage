import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:petpal_dummy/main.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  NavBar({required this.currentIndex});

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        if (currentIndex != 0) {}
        break;
      case 1:
        if (currentIndex != 1) {}
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
      onTap: (index) => _onItemTapped(index),
      selectedItemColor: AppColor.greenTambourine,
    );
  }
}