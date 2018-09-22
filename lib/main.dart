import 'package:business_card/landing/AppTheme.dart';
import 'package:business_card/landing/LandingScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme,
      home: new LandingScreen(),
    );
  }
}
