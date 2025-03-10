import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/rounded_icon_button.dart';
import 'package:caffigo/utils/app_constants.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.onlyBack),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'My order',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: OrderTile(
                      itemName: 'Americano',
                      itemDescription: 'Single | Iced | Medium | Full ice',
                      quantity: 'x1',
                      currency: 'INR',
                      price: '3.00',
                      image: AppImages.mugCoffee,
                    ),
                  );
                }),
          )
        ],
      ),
      bottomSheet: CartBottomSheet(
        currency: 'INR',
        totalPrice: '3.00',
      ),
    );
  }
}

class CartBottomSheet extends StatelessWidget {
  final String totalPrice;
  final String currency;

  const CartBottomSheet(
      {super.key, required this.totalPrice, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30, bottom: 30, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Price',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: TextColor.lightGrey,
                    ),
              ),
              Text(
                '$currency $totalPrice',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: TextColor.lightBlue,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(width: 30),
          RoundedIconButton(
            text: 'Next',
            onPressed: () {
              showMyBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  final String image;
  final String itemName;
  final String itemDescription;
  final String quantity;
  final String currency;
  final String price;

  const OrderTile({
    super.key,
    required this.image,
    required this.itemName,
    required this.itemDescription,
    required this.quantity,
    required this.currency,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: 400,
      decoration: BoxDecoration(
        color: BackgroundColor.lighterBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(image, height: 80, fit: BoxFit.cover),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  itemName,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: TextColor.lightBlue,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  itemDescription,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: TextColor.lightGrey),
                ),
                Text('x1'),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Column(
                children: [
                  Text(
                    currency,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: TextColor.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    price,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: TextColor.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

void showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        padding: EdgeInsets.only(top: 35, right: 20, left: 20, bottom: 20),
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order payment",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: TextColor.lightBlue,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: BackgroundColor.lighterBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 26,
                          color: IconColor.lightBlue,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alex',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: TextColor.lightBlue,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Magic Coffee store',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: TextColor.lightBlue,
                                ),
                          ),
                          Text(
                            'Bradford BD1 1PR ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: TextColor.lightBlue,
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: TextColor.lightGrey,
                          ),
                    ),
                    Text(
                      'INR 3.00',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: TextColor.lightBlue,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                RoundedIconButton(
                  text: 'Pay Now',
                  icon: Icons.credit_card_outlined,
                  onPressed: () {
                    showMyBottomSheet(context);
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
