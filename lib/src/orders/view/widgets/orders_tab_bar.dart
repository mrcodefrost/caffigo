import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OrdersTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  final List<String> tabsList;

  const OrdersTabBar({
    super.key,
    required this.tabController,
    required this.tabsList,
  });

  @override
  Size get preferredSize => const Size.fromHeight(48.0);

  List<Tab> _buildCategoryTabs() {
    return tabsList.map((tab) {
      return Tab(
        text: tab,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabAlignment: TabAlignment.center,
      tabs: _buildCategoryTabs(),
      indicatorColor: IconColor.blue,
      labelColor: TextColor.lightBlue,
      labelStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w700),
      unselectedLabelColor: TextColor.paleGrey,
      unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
      isScrollable:
          true, // not required but fine, it allows for tab alignment to be at start if needed
      dividerColor: DividerColor.cement,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: const EdgeInsets.symmetric(horizontal: 50),
    );
  }
}
