import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: getProportionateScreenWidht(40),
          width: getProportionateScreenWidht(40),
        ),
      ),
    );
  }
}

// we also need to pass our product to details screen
// And we use name route so we need to create a arguments class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
