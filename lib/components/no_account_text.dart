import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have An Account??",
          style: TextStyle(fontSize: getProportionateScreenWidht(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpscreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidht(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
