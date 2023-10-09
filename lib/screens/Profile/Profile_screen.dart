import 'package:ecommerce/screens/Profile/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav_bar.dart';
import '../../enums.dart';



class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  ProfileScreen(String s);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}