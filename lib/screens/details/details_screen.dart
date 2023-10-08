import 'package:ecommerce/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/custom_app_bar.dart';

//Detail_Screen 
class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  DetailsScreen(String s);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: Body(product: args.product),
    );
  }
}

class ProductDetailsArguments {
  Product product;

  ProductDetailsArguments({required this.product});
}
