import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/primary_rounded_button.dart';
import 'package:caffigo/src/orders/controller/order_options_controller.dart';
import 'package:caffigo/src/orders/view/widgets/order_options_bottom_sheet.dart';
import 'package:caffigo/src/orders/view/widgets/order_options_divider.dart';
import 'package:caffigo/src/orders/view/widgets/quantity_selector_button.dart';
import 'package:caffigo/utils/app_constants.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderOptionsScreen extends StatelessWidget {
  OrderOptionsScreen({super.key});

  final orderOptionsCtrl = Get.put(OrderOptionsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.order),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.horizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 150,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: BackgroundColor.lighterBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                AppImages.mugCoffee,
                height: 120,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cappuccino',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                QuantitySelectorButton(),
              ],
            ),
            OrderOptionsDivider(),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ristretto',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SegmentedButton(
                    segments: [
                      ButtonSegment(value: 1, label: Text('One')),
                      ButtonSegment(value: 2, label: Text('Two')),
                    ],
                    selected: orderOptionsCtrl.selectedSegment,
                    onSelectionChanged: orderOptionsCtrl.onSegmentChange,
                    showSelectedIcon: false,
                    style: SegmentedButton.styleFrom(
                      side: BorderSide(color: ButtonColor.lameBlue),
                      selectedForegroundColor: ButtonColor.white,
                      selectedBackgroundColor: ButtonColor.brightBlue,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                              fontWeight: FontWeight.w600, letterSpacing: 1.4),
                    ),
                  ),
                ],
              ),
            ),
            OrderOptionsDivider(),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Onsite / Takeaway',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          orderOptionsCtrl.onTakeAwayChange(false);
                        },
                        icon: Icon(Icons.coffee_outlined),
                        color: orderOptionsCtrl.isTakeAway.value
                            ? ButtonColor.paleGrey
                            : ButtonColor.brightBlue,
                        iconSize: 35,
                        tooltip: 'Onsite',
                      ),
                      SizedBox(width: 30),
                      IconButton(
                        onPressed: () {
                          orderOptionsCtrl.onTakeAwayChange(true);
                        },
                        icon: Icon(Icons.local_drink_outlined),
                        color: orderOptionsCtrl.isTakeAway.value
                            ? ButtonColor.brightBlue
                            : ButtonColor.paleGrey,
                        iconSize: 35,
                        tooltip: 'Takeaway',
                      ),
                    ],
                  )
                ],
              ),
            ),
            OrderOptionsDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Size',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                orderOptionsCtrl.selectSize(0);
                              },
                              icon: Icon(Icons.coffee_outlined),
                              color: orderOptionsCtrl.selectedSize.value == 0
                                  ? ButtonColor.brightBlue
                                  : ButtonColor.paleGrey,
                              iconSize: 20,
                              tooltip: 'Small',
                            ),
                            Text(
                              'Small',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: TextColor.lightBlue,
                                  ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10),
                    Obx(() => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                orderOptionsCtrl.selectSize(1);
                              },
                              icon: Icon(Icons.coffee_outlined),
                              color: orderOptionsCtrl.selectedSize.value == 1
                                  ? ButtonColor.brightBlue
                                  : ButtonColor.paleGrey,
                              iconSize: 35,
                              tooltip: 'Medium',
                            ),
                            Text(
                              'Medium',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: TextColor.lightBlue,
                                  ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10),
                    Obx(() => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                orderOptionsCtrl.selectSize(2);
                              },
                              icon: Icon(Icons.coffee_outlined),
                              color: orderOptionsCtrl.selectedSize.value == 2
                                  ? ButtonColor.brightBlue
                                  : ButtonColor.paleGrey,
                              iconSize: 50,
                              tooltip: 'Large',
                            ),
                            Text(
                              'Large',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: TextColor.lightBlue,
                                  ),
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
            OrderOptionsDivider(),
          ],
        ),
      ),
      bottomSheet: OrderOptionsBottomSheet(),
    );
  }
}
