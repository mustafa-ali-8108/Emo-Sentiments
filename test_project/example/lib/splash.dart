// @dart=2.11
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tflite_flutter_plugin_example/home.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: MyApp(),
      image: Image.asset('assets/logo1.jpg'),
      photoSize: 100,
      backgroundColor: Colors.black87,
      loaderColor: Colors.redAccent,
    );
  }
}