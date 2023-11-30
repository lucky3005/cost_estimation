import 'dart:async';

import 'package:cost_estimation/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "aboutus");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.cyan, Colors.purpleAccent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset('asset/CostEstimation logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Cost Estimation',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
