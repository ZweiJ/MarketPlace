//digunakan untuk mengembangkan sebuah layar atau halaman untuk proses autentikasi pengguna dalam sebuah aplikasi e-commerce. 
import 'package:ecommerce/components/no_account_text.dart';
import 'package:ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/socal_card.dart';

class Body extends StatelessWidget { //deklarasi body
  const Body({super.key}); //konstruktor untuk kelas Body

  //digunakan untuk membangun tampilan layar atau widget yang akan ditampilkan kepada pengguna
  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidht(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidht(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // bagian dari sebuah tampilan atau widget dalam sebuah aplikasi mobile atau web yang digunakan untuk proses otentikasi atau login. 
                Text(  // widget yang digunakan untuk menampilkan teks di layar
                  "Sign in with your email and password \nor Continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02), //widget yang digunakan untuk menambahkan spasi vertikal dalam tampilan
                SignForm(), //widget yang mungkin merupakan bagian dari formulir pendaftaran atau login
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard( //widget kustom yang digunakan untuk menampilkan ikon media sosial (Google, Facebook, dan Twitter) sebagai pilihan login.
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                NoAccountText(), //widget kustom yang menampilkan teks atau tombol untuk pengguna yang belum memiliki akun.
              ],
            ),
          ),
        ),
      ),
    );
  }
}


