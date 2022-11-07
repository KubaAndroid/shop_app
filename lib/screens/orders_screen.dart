import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/app_drawer.dart';

import '../providers/orders.dart' show Orders;
import '../components/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = "\orders-screen";
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your order"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: ordersData.oders.length,
        itemBuilder: ((context, index) {
          return OrderItem(
            order: ordersData.oders[index],
          );
        }),
      ),
    );
  }
}
