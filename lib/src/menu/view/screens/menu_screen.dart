import 'package:caffigo/utils/app_constants.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 10,
          children: [
            MenuAppbar(
              name: 'Frost',
              profileOnPressed: () {},
              cartOnPressed: () {},
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: BackgroundColor.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Select your items',
                        style: context.textTheme.bodyLarge!.copyWith(
                          color: TextColor.paleGrey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Expanded(
                        child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 2 items per row
                            crossAxisSpacing: 16, // Horizontal space
                            mainAxisSpacing: 16, // Vertical space
                            childAspectRatio: 0.9, // Adjust based on design
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: BackgroundColor.lighterBlue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.mugCoffee,
                                    height: 90, // Adjust size
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Americano',
                                    style:
                                        context.textTheme.bodyMedium!.copyWith(
                                      color: TextColor.lightBlue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuAppbar extends StatelessWidget {
  final String name;
  final void Function() cartOnPressed;
  final void Function() profileOnPressed;

  const MenuAppbar({
    super.key,
    required this.cartOnPressed,
    required this.profileOnPressed,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(
                'Welcome !',
                style: context.textTheme.bodyLarge!.copyWith(
                  color: TextColor.paleGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                name,
                style: context.textTheme.bodyLarge!.copyWith(
                  color: TextColor.lightBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: cartOnPressed,
            icon: Icon(Icons.shopping_cart_outlined),
            iconSize: 26,
          ),
          IconButton(
            onPressed: profileOnPressed,
            icon: Icon(Icons.person_outline),
            iconSize: 26,
          ),
        ],
      ),
    );
  }
}
