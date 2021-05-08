import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* final logo = Hero(
      tag: 'hero',
      child: Align(
        alignment: Alignment.center,
        child: Image.asset('images/maxgrow_logo.png', height: 30),
      ),
    );*/

    return MaterialApp(
      title: 'MaxGrow Feeder',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'MaisonNeue',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
