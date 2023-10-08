import 'package:ecommerce/screens/home/components/category_card.dart';
import 'package:ecommerce/screens/home/components/home_header.dart';
import 'package:ecommerce/screens/home/components/popular_product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'discount_banner.dart';
import 'special_offer.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidht(4)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidht(7)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidht(7)),
            Categories(),
            SizedBox(height: getProportionateScreenWidht(7)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenWidht(7)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidht(7)),
          ],
        ),
      ),
    );
  }
}
