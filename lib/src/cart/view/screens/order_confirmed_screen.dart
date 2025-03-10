import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/utils/app_constants.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.onlyBack),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.takeaway),
            const SizedBox(height: 30),
            Text(
              'Ordered',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: TextColor.darkBlue,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 20),
            Text(
              'Alex, your order has been successfully placed.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: TextColor.lightGrey,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              'The order will be ready today at 18:10 at the address Bradford BD1 1PR',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              'Submit your personal QR code at the coffee shop to receive the order.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: TextColor.lightGrey,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
