import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OrderOptionsDivider extends StatelessWidget {
  const OrderOptionsDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: const Divider(
        color: DividerColor.cement,
        thickness: 1.5,
      ),
    );
  }
}
