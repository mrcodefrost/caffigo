import 'package:caffigo/src/common/widgets/primary_rounded_button.dart';
import 'package:flutter/material.dart';

class OrderOptionsBottomSheet extends StatelessWidget {
  const OrderOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                'BYN 3.00',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: PrimaryRoundedButton(
                  text: 'Next',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
