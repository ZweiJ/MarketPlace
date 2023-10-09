import 'package:flutter/material.dart';

import '../../Profile/components/body.dart';



class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Body(),
    );
  }
}