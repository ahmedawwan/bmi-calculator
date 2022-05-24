import 'constant.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          trackHeight: 2,
          activeTrackColor: Colors.white,
          inactiveTrackColor: kInactiveSliderColor,
          thumbColor: kSecondaryColor,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
          overlayColor: const Color(0x29EB1555),
        ),
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}
