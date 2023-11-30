import 'package:cost_estimation/about_us.dart';
import 'package:cost_estimation/tech_models/analogous.dart';
import 'package:cost_estimation/tech_models/expert_judg.dart';
import 'package:cost_estimation/tech_models/parametric.dart';
import 'package:flutter/material.dart';
import './home_screen.dart';
import './login_screen.dart';
import './splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "homepage": (context) => const HomeScreen(),
        "loginpage": (context) => const LoginPage(),
        "aboutus": (context) => AboutUs(),
        "expertjudgment":(context) => const ExpertJudgment(),
        "analogousestimation":(context) => AnalogousEstimation(),
        "parametricestimation":(context) => ParametricEstimation(),
      },
    );
  }
}
