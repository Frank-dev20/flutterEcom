import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controllers/order_controller.dart';
import 'package:shopping_app/widget/app_drawer.dart';
import 'package:shopping_app/widget/order_item.dart';

class OrderScreen extends StatelessWidget {
  var orderController = Get.put(OrderController());
  @override

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Your orders"),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orderController.orders.length,
        itemBuilder: (context, index)=>
        OrderItem(orderController.orders[index])),
      );
  }
}