// @dart=2.11

import 'package:flutter/material.dart';
import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EMO SENTIMENT',
      theme: ThemeData.dark(),
      home: MySplash()
    );
  }
}