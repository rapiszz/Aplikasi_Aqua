import 'package:applicationaqua/LoginPage.dart';
import 'package:applicationaqua/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Layer 1: Background
          Positioned.fill(
            child: Image.asset(
              'images_page2/Background.png',
              fit: BoxFit.cover,
            ),
          ),

          // Layer 2: Gambar Aqua di halaman ini
          // Layer 2: Vector hiasan
          Positioned.fill(
            child: Image.asset(
              'images_page2/AquaPage2.png',
              fit: BoxFit.contain,
            ),
          ),

          // Layer 3: Teks Kebaikan Alam dan Kebaikan Hidup
          Positioned(
            bottom: 410,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Kebaikan Alam',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                SizedBox(height: 1), // Spasi antar teks
                Text(
                  'Kebaikan Hidup',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
              ],
            ),
          ),

          // Layer 4: Tombol Login dan Register
          Positioned(
            bottom: 500, // Atur posisi dari bawah layar
            left: 50,
            right: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A529D),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 13), // Jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF),
                      side: BorderSide(color: Color(0xFF1A529D), width: 1.5),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Text(
                    'Register',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4E5355),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}