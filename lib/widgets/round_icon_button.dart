import 'package:flutter/material.dart';

import '../constant/constant.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});

  final Function onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      shape: const CircleBorder(),
      fillColor: kButtonBackgroundColor,
      child: Icon(icon),
      elevation: 6.0,
      focusElevation: 6.0,
      hoverElevation: 8.0,
      highlightElevation: 12.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
