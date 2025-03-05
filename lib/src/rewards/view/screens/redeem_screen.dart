import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/utils/app_constants.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RedeemScreen extends StatelessWidget {
  const RedeemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.redeem),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppImages.mugCoffee, height: 60, fit: BoxFit.cover),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latte',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: TextColor.blue,
                      ),
                    ),
                    Text(
                      'Valid until: 12/12/2023',
                      style: context.textTheme.bodySmall!.copyWith(
                        color: TextColor.paleGrey,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('1350 Pts'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
