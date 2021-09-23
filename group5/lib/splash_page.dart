import 'dart:async';
import 'package:flutter/material.dart';
import 'package:group5/constants.dart';
import 'package:group5/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        padding: EdgeInsets.only(left: 80, right: 80),
        child: Center(child: Image.asset('assets/images/logo.png'))
      ),
    );
  }
}
