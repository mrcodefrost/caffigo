import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const RoundedIconButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor.blue,
          foregroundColor: ButtonColor.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w600,
              )),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            color: ButtonColor.white,
            size: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(text),
        ],
      ),
    );
  }
}
