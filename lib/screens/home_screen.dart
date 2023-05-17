import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import '../widgets/navbar.dart';
import '../widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        kBottomNavigationBarHeight - // navbar
        MediaQuery.of(context).viewPadding.top;

    final appbar = AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColor.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColor.whiteColor,
      //toolbarHeight: MediaQuery.of(context).viewPadding.top,
      iconTheme: const IconThemeData(color: AppColor.greenTambourine),
      elevation: 0,
      title: Image.asset(
        'assets/logos/petpal_text.png',
        //width: deviceWidth * 0.7,
        height: AppBar().preferredSize.height,
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('My Page')));
            },
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 35,
            ),
            tooltip: 'My Page')
      ],
    );

    return Scaffold(
      appBar: appbar,
      body: HomeBody(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
      bottomNavigationBar: NavBar(
        currentIndex: 0,
      ),
    );
  }
}