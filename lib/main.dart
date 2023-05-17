import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class AppColor {
  static const Color greenTambourine = Color.fromRGBO(12, 122, 61, 1);
  static const Color greenTambourineTransparent =
      Color.fromRGBO(12, 122, 61, 0.6);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Color.fromRGBO(255, 224, 0, 1);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromRGBO(12, 122, 61, 1),
          secondary: Color.fromRGBO(12, 122, 61, 1),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;

    final appbar = AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColor.whiteColor,
      //toolbarHeight: MediaQuery.of(context).viewPadding.top,
      iconTheme: IconThemeData(color: AppColor.greenTambourine),
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
      body: const MainPage(),
      bottomNavigationBar: NavBar(
        currentIndex: 0,
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            color: AppColor.whiteColor,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: AppColor.whiteColor,
            // ignore: prefer_const_constructors
            child: FractionallySizedBox(
              heightFactor: 0.3,
              alignment: FractionalOffset.center,
              child: const Divider(
                  indent: 5, endIndent: 5, color: Colors.grey, thickness: 2.3),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: AppColor.whiteColor,
          ),
        )
      ],
    );
  }
}