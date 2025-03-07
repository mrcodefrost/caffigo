import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OrderOnGoingTile extends StatelessWidget {
  final String timestamps;
  final String amount;
  final String itemName;
  final String address;

  const OrderOnGoingTile({
    super.key,
    required this.timestamps,
    required this.amount,
    required this.itemName,
    required this.address,
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
        spacing: 9,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timestamps,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: TextColor.lightGrey),
              ),
              Text(
                amount,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: TextColor.blue,
                      fontWeight: FontWeight.w600,
                    ),
              )
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Icon(
                Icons.local_drink_outlined,
                color: IconColor.blue,
              ),
              Text(
                itemName,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: TextColor.darkBlue,
                    ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: IconColor.blue,
              ),
              Text(
                address,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: TextColor.darkBlue,
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
