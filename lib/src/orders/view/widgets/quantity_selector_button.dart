import 'package:flutter/material.dart';

import '../../../../utils/color_constant.dart';

class QuantitySelectorButton extends StatefulWidget {
  const QuantitySelectorButton({super.key});

  @override
  State<QuantitySelectorButton> createState() => _QuantitySelectorButtonState();
}

class _QuantitySelectorButtonState extends State<QuantitySelectorButton> {
  int count = 0;

  void _increaseCount() {
    setState(() {
      count++;
    });
  }

  void _decreaseCount() {
    if (count >= 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(ButtonColor.white),
            side:
                WidgetStatePropertyAll(BorderSide(color: ButtonColor.lameBlue)),
          ),
          highlightColor: ButtonColor.brightBlue,
          onPressed: _decreaseCount,
          icon: const Icon(Icons.remove),
          color: IconColor.black,
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ButtonColor.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
            count.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(ButtonColor.white),
            side: WidgetStatePropertyAll(
              BorderSide(color: ButtonColor.lameBlue),
            ),
          ),
          highlightColor: ButtonColor.brightBlue,
          onPressed: _increaseCount,
          icon: const Icon(Icons.add),
          color: IconColor.black,
        ),
      ],
    );
  }
}
