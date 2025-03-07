import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/primary_rounded_button.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppImages.mugCoffee, height: 58, fit: BoxFit.cover),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latte',
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: TextColor.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Valid until 12/12/2023',
                      style: context.textTheme.bodySmall!.copyWith(
                        color: TextColor.lightGrey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                PrimaryRoundedButton(
                  text: '1240 pts',
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
