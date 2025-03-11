import 'package:caffigo/src/menu/view/screens/menu_screen.dart';
import 'package:caffigo/src/orders/view/screens/orders_screen.dart';
import 'package:caffigo/src/rewards/view/screens/rewards_screen.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Widget? child = MenuScreen();

  void handleIndexChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          child = MenuScreen();
          break;
        case 1:
          child = RewardsScreen();
          break;
        case 2:
          child = OrdersScreen();
          break;
      }
      child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: child,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
            icon: Icons.storefront_outlined,
          ),
          FluidNavBarIcon(
            icon: Icons.card_giftcard_outlined,
          ),
          FluidNavBarIcon(
            icon: Icons.receipt_long_outlined,
          ),
        ],
        onChange: handleIndexChange,
        style: FluidNavBarStyle(
          barBackgroundColor: ButtonColor.blue,
          iconBackgroundColor: ButtonColor.lameBlue,
          iconSelectedForegroundColor: ButtonColor.white,
          iconUnselectedForegroundColor: ButtonColor.paleGrey,
        ),
      ),
    );
  }
}
