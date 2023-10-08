import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/screens/cart/components/body.dart';
import 'package:ecommerce/screens/cart/components/check_out_card.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  CartScreen(String s);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
