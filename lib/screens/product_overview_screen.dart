import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controllers/cart_controller.dart';
import 'package:shopping_app/widget/app_drawer.dart';
import 'package:shopping_app/widget/productgrid.dart';
import 'package:shopping_app/screens/cart_screen.dart';
import 'package:shopping_app/widget/badge.dart';

class ProductOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shop"),
        actions: <Widget>[
          GetBuilder<CartController>(
            init: CartController(),
            builder: (context){
              return Badge(
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: (){
                    Get.to(() => const CartScreen());
                  },
                ),
                value: cartController.itemCount.toString(),
                color: Colors.deepOrange,
              );
            }
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: ProductsGrid(),
    );

  }
}