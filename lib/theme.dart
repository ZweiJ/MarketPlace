import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide(color: kTextColor),
                gapPadding: 10,
              );
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            iconTheme: IconThemeData(color: Colors.black), 
            toolbarTextStyle: TextTheme(
              titleLarge: TextStyle(
                color: Color(0xFF8B8B8B)
                ),
            ).bodyMedium, 
            titleTextStyle: TextTheme(
              titleLarge: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize:18,
              ),
            ).titleLarge,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
              //floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 42,
                vertical: 20,
              ),
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              border: outlineInputBorder,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}