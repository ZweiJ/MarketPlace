import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(  
      children: [
        SectionTitle(
          title: "Special for you",
          press: () {}, 
        ),
        SizedBox(height: getProportionateScreenWidht(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidht(20))
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidht(20)),
      child: SizedBox(
        width: getProportionateScreenWidht(242),
        height: getProportionateScreenWidht(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidht(15),
                  vertical: getProportionateScreenWidht(10),
                ),
                child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                    TextSpan(
                      text: "$category\n",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidht(16),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "$numOfBrands Brand"),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}