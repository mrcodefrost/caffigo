import 'package:caffigo/routes/routes.dart';
import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.rewards),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            RewardsLoyaltyCard(),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: BackgroundColor.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Points',
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: TextColor.paleGrey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '2750',
                        style: context.textTheme.headlineLarge!.copyWith(
                          color: TextColor.paleGrey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      textStyle: context.textTheme.bodySmall,
                      backgroundColor: ButtonColor.lameBlue,
                      foregroundColor: ButtonColor.paleGrey,
                    ),
                    onPressed: () {
                      Get.toNamed(RouteName.redeem);
                    },
                    child: const Text('Redeem drinks'),
                  ),
                ],
              ),
            ),
            Text(
              'History Rewards',
              style: context.textTheme.bodyLarge!.copyWith(
                color: TextColor.blue,
              ),
            ),
            RewardsScrollList()
          ],
        ),
      ),
    );
  }
}

class RewardsScrollList extends StatelessWidget {
  const RewardsScrollList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Americano',
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: TextColor.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '16 Jun 25 | 08:00',
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: TextColor.paleGrey,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        '+12 Pts',
                        style: context.textTheme.titleLarge!.copyWith(
                          color: TextColor.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(color: DividerColor.cement),
                const SizedBox(height: 15),
              ],
            );
          }),
    );
  }
}

class RewardsLoyaltyCard extends StatelessWidget {
  const RewardsLoyaltyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: BackgroundColor.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Loyalty card',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: TextColor.paleGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '4 / 8',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: TextColor.paleGrey,
                ),
              ),
            ],
          ),
          Container(
              decoration: BoxDecoration(
                color: BackgroundColor.lighterBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(8, (int index) {
                  if (index < 3) {
                    return Icon(
                      Icons.coffee,
                      color: IconColor.blue,
                      size: 30,
                    );
                  }
                  return Icon(
                    Icons.coffee_outlined,
                    color: IconColor.paleGrey,
                    size: 30,
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}
