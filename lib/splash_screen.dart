import 'dart:async';

import 'package:cosmico/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image102x.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
              child: Image.asset(
            'assets/loader.png',
            fit: BoxFit.contain,
          )),
          Positioned(
              bottom: 32,
              left: MediaQuery.of(context).size.width / 2 - 55.5,
              child: Image.asset(
                'assets/flutter_logo.png',
                width: 111,
                height: 32,
              ))
        ],
      ),
    );
  }
}
