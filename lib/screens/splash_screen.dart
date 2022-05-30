import 'dart:async';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

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
    Timer(const Duration(seconds: 1), () async {
      setState(() {
        _visible = true;
      });
    });
    startTimer();
  }

  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          color: kPrimaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Calculate your BMI",
                  style: kLabelTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
