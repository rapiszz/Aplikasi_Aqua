import 'package:applicationaqua/LoginRegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AquaApp());
}

class AquaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images_page1/gambargunung.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'images_page1/VectorHiasan.png',
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 23.0),
              child: Image.asset(
                'images_page1/logoaqua.png',
                width: 365,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'images_page1/gambaraquaproduct.png',
              width: 375,
            ),
          ),
          Positioned(
            top: 515,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginRegisterPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(90, 50),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
                child: CustomArrow(),
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'KEBAIKAN',
                  style: GoogleFonts.montserrat(
                    fontSize: 45,
                    height: 0.9,
                    fontWeight: FontWeight.bold,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  'BERAWAL',
                  style: GoogleFonts.montserrat(
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  'DARI SINI',
                  style: GoogleFonts.montserrat(
                    fontSize: 35,
                    height: 0.8,
                    fontWeight: FontWeight.w600,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Terpercaya lebih',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  'dari 45 tahun',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle(color: Colors.white),
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

// Custom widget untuk membuat panah dengan buntut
class CustomArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Geser buntut panah menggunakan Transform
        Transform.translate(
          offset: Offset(8, 0), // Geser ke kiri sejauh 5 piksel
          child: Container(
            width: 4,  // Panjang buntut
            height: 2.5,   // Ketebalan buntut
            color: Color(0xFF4E5355),
          ),
        ),
        SizedBox(width: 1), // Jarak antara buntut dan panah

        // Ikon panah asli
        Icon(
          Icons.arrow_forward,
          size: 35,
          color: Color(0xFF4E5355),
        ),
      ],
    );
  }
}