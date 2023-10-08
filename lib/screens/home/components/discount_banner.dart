import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidht(20)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidht(20),
        vertical: getProportionateScreenWidht(15),
      ),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20)),
      child: Text.rich(
        TextSpan(
            text: "Kejutan 10:10\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "Diskon 60%",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
              ),
            ]
        ),
      ),
    );
  }
}