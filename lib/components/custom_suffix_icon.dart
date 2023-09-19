import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key, 
    required this.svgIcon,
  });

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidht(20),
        getProportionateScreenWidht(20),
        getProportionateScreenWidht(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidht(18),
      ),
    );
  }
}