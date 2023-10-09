import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';// Import library Flutter SVG untuk menampilkan ikon SVG.

import '../../../constants.dart';// Import file constants.dart yang berisi konstanta-konstanta.

//untuk menampilkan item menu pada halaman profile dengan teks,ikon dan tindakan terkait
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon; // Properti text dan icon diperlukan untuk menampilkan teks dan ikon di dalam menu.
  final VoidCallback? press;// Properti press adalah fungsi yang akan dijalankan saat tombol menu ditekan.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: kPrimaryColor, //warna teks tombol dari file constants.dart
          padding: EdgeInsets.all(20),//jarak antara teks dan batas tombol
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,// Warna ikon dari file constants.dart.
              width: 22,
            ),
            SizedBox(width: 20),// Jarak antara ikon dan teks.
            Expanded(child: Text(text)),// Menampilkan teks menu dengan mengisi ruang tersisa.
            Icon(Icons.arrow_forward_ios),// Menampilkan ikon panah ke kanan.
          ],
        ),
      ),
    );
  }
}