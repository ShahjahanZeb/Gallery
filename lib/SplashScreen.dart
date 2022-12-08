import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import 'Tab_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (contex) => const TabScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return // height: double.infinity,
        //  width: double.infinity,
        Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
      ),
      Positioned(
        top: 260,
        left: 80,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.yellow,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fill,
              ),
            )),
      ),
    ]);
  }
}
