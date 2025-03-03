import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class ForwardNavButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ForwardNavButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor.blue,
          iconColor: ButtonColor.white,
          shape: CircleBorder(),
          iconSize: 30,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
      child: Icon(Icons.arrow_forward),
    );
  }
}
