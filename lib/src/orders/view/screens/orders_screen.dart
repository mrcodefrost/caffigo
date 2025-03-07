import 'package:caffigo/src/orders/controller/orders_controller.dart';
import 'package:caffigo/src/orders/view/widgets/order_history_tile.dart';
import 'package:caffigo/src/orders/view/widgets/order_ongoing_tile.dart';
import 'package:caffigo/src/orders/view/widgets/orders_tab_bar.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  final OrdersController ordersCtrl = Get.put(OrdersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Order'),
        titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: TextColor.lightBlue,
            ),
        centerTitle: true,
        bottom: OrdersTabBar(
          tabController: ordersCtrl.tabController,
          tabsList: ['On going', 'History'],
        ),
      ),
      body: TabBarView(
        controller: ordersCtrl.tabController, // Bind controller
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OrderOnGoingTile(
                    timestamps: '24 June | 12:30 | by 18:10',
                    amount: 'BYN 3.00',
                    itemName: 'Americano',
                    address: 'Aerocity, Delhi',
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OrderHistoryTile(
                    timestamps: '24 June | 12:30 | by 18:10',
                    amount: 'BYN 3.00',
                    itemName: 'Americano',
                    address: 'Aerocity, Delhi',
                    onPressed: () {},
                  );
                }),
          ),
        ],
      ),
    );
  }
}
