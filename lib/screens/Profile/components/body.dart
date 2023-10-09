import 'package:ecommerce/screens/Profile/components/profile_menu.dart'; //mengimpor komponen profil menu 
import 'package:ecommerce/screens/Profile/components/profile_pic.dart'; // mengimporkomponen profil pic
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart'; // mengimpor halaman signinscreen saat pengguna klik logout
import 'package:flutter/material.dart';

//tampilan utama pada halaman profil.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),//// Menampilkan komponen gambar profil.
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},// Fungsi yang akan dijalankan saat item menu ditekan.
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},// Fungsi yang akan dijalankan saat item menu ditekan.
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},// Fungsi yang akan dijalankan saat item menu ditekan.
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},// Fungsi yang akan dijalankan saat item menu ditekan.
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () { 
              Navigator.pushNamed(context, SignInScreen.routeName); //mengarahkan pengguna ke halaman sign-in saat item di tekan
            },
          ),
        ],
      ),
    );
  }
}
