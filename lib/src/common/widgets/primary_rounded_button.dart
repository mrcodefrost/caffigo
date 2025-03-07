import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class PrimaryRoundedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const PrimaryRoundedButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ButtonColor.blue,
        foregroundColor: ButtonColor.white,
        padding: const EdgeInsets.symmetric(horizontal: 15),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
