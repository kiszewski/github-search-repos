import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.greenAccent[700],
          textTheme: TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
            headline2: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey[700],
              fontSize: 14,
            ),
          )),
    ).modular();
  }
}
