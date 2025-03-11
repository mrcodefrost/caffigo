import 'package:caffigo/routes/routes.dart';
import 'package:caffigo/utils/color_constant.dart';
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
    bool showBackButton = true;
    List<Widget> actions = [];

    switch (title) {
      case AppBarTitles.onlyBack:
        heading = '';
        break;
      case AppBarTitles.order:
        heading = 'Order';
        actions = [
          IconButton(
            onPressed: () {
              Get.toNamed(RouteName.cart);
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: IconColor.lightBlue,
              size: 26,
            ),
          ),
        ];
        break;
      case AppBarTitles.coffeeCustomization:
        heading = 'Customization';
        actions = [
          IconButton(
            onPressed: () {
              Get.toNamed(RouteName.cart);
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: IconColor.lightBlue,
              size: 26,
            ),
          ),
        ];
        break;
      case AppBarTitles.profile:
        heading = 'Profile';
        break;
      case AppBarTitles.rewards:
        heading = 'Rewards';
        showBackButton = false;
        break;
      case AppBarTitles.redeem:
        heading = 'Redeem';
        break;
      case AppBarTitles.myOrder:
        heading = 'My Order';
        showBackButton = false;
        break;
    }

    return AppBar(
      title: Text(heading),
      titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: TextColor.lightBlue,
          ),
      leading: showBackButton
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 26,
              color: IconColor.lightBlue,
            )
          : null,
      centerTitle: true,
      actions: actions,
    );
  }
}
