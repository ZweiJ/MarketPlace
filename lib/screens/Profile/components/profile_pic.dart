import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; //: Mengimpor pustaka Flutter untuk menampilkan gambar SVG.

//untuk menampilkan gambar profil pengguna dan ikon kamera yang berada di sudut kanan bawah gambar profil
class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override //digunakan untuk membangun tampilan widget.
  Widget build(BuildContext context) {
    return SizedBox( //untuk mengatur tinggi dan lebar gambar profil
      height: 115,
      width: 115,
      child: Stack( // untuk menggabungkan beberapa weidget secara bersamaan
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar( //widget yang menampilkan gambar profil
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox( //untuk mengatur tinggi dan lebar gambar profil
              height: 46,
              width: 46,
              child: TextButton( 
                style: TextButton.styleFrom( 
                  foregroundColor: Colors.white, 
                  shape: RoundedRectangleBorder( //untuk mengatur bentuk tombol menjadi bulat dengan sudut yang dibulatkan border radius
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white), // digunakan untuk menambahkan garis pinggir putih pada tombol
                  ),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {}, //fungsi yang akan dijalankan ketika tombol di klik
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),//untuk menampilkan ikon camera dari berkas svg
              ),
            ),
          )
        ],
      ),
    );
  }
}