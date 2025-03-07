import 'package:caffigo/src/common/widgets/primary_rounded_button.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OrderHistoryTile extends StatelessWidget {
  final String timestamps;
  final String amount;
  final String itemName;
  final String address;
  final void Function()? onPressed;

  const OrderHistoryTile({
    super.key,
    required this.timestamps,
    required this.amount,
    required this.itemName,
    required this.address,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 30,
        left: 30,
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Column (Order Info)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      '24 June | 12:30 | by 18:10',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: TextColor.lightGrey,
                          ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_drink_outlined, color: IconColor.blue),
                        SizedBox(
                            width: 10), // Fixed spacing between icon and text
                        Expanded(
                          child: Text(
                            'Americano',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: TextColor.darkBlue,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: IconColor.blue),
                        SizedBox(width: 10), // Fixed spacing
                        Expanded(
                          child: Text(
                            'Aerocity, Delhi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: TextColor.darkBlue,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Ensuring at least 15px spacing between the columns
              SizedBox(width: 15),

              // Right Column (Price & Button)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 10,
                  children: [
                    Text(
                      'BYN 3.00',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: TextColor.blue,
                            fontWeight: FontWeight.w600,
                          ),
                      overflow:
                          TextOverflow.visible, // Ensures text wraps if needed
                    ),
                    PrimaryRoundedButton(
                      text: 'Order',
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(color: DividerColor.cement),
        ],
      ),
    );
  }
}
