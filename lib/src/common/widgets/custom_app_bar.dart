import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AppBarTitles {
  onlyBack,
  order,
  coffeeCustomization,
  profile,
  rewards,
  redeem,
  myOrder
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarTitles title;
  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    String heading = 'Empty';
    List<Widget> actions = [];

    switch (title) {
      case AppBarTitles.onlyBack:
        heading = '';
        break;
      case AppBarTitles.order:
        heading = 'Order';
        actions = [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ];
        break;
      case AppBarTitles.coffeeCustomization:
        heading = 'Customization';
        actions = [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ];
        break;
      case AppBarTitles.profile:
        heading = 'Profile';
        break;
      case AppBarTitles.rewards:
        heading = 'Rewards';
        break;
      case AppBarTitles.redeem:
        heading = 'Redeem';
        break;
      case AppBarTitles.myOrder:
        heading = 'My Order';
        break;
    }

    return AppBar(
      title: Text(heading),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
      ),
      actions: actions,
    );
  }
}
