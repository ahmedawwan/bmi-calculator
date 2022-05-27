import 'dart:async';
import 'package:bmi_calculator/constant/constant.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() => Timer(const Duration(seconds: 3),
      () async => Navigator.pushReplacementNamed(context, '/main'));

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Center(
          child: IconContent(
            icon: FontAwesomeIcons.weightScale,
            label: "BMI Calculator",
          ),
        ),
      ),
    );
  }
}
