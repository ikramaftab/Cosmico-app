import 'package:cosmico/earth.dart';
import 'package:cosmico/home_screen.dart';
import 'package:cosmico/login_screen.dart';
import 'package:cosmico/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
