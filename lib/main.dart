import 'package:flutter/material.dart';
import 'package:version_learning/1stPage.dart';
import 'package:version_learning/all_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          /*elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: CircleBorder(),
          minimumSize: Size.square(80),
        )),*/
        ),
        home: AllButoon() //FristPage(),
        );
  }
}
