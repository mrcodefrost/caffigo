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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome !'),
                      Text('Frost'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline),
                  ),
                ],
              ),
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
                        color: TextColor.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),
                    ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 150,
                          // color: BackgroundColor.lighterBlue,
                          child: Column(
                            children: [
                              Image.asset(AppImages.mugCoffee),
                              Text('Americano'),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
