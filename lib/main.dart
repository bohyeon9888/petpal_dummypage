import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

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
  final ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color.fromRGBO(12, 122, 61, 1),
      secondary: const Color.fromRGBO(12, 122, 61, 1),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColor.yellowColor,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 25,
            color: AppColor.yellowColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
          displayMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
          displaySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: 'Montserrat',
          ),
          labelMedium: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            color: AppColor.greenTambourine,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
