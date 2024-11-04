import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  bool _obscureConfirmText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            // Tombol Panah Custom
            Positioned(
              top: 35,
              left: 25,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF4D4D4D),
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

            // Posisi Nama Lengkap, Email, Kata Sandi, dan Konfirmasi Kata Sandi
            Positioned(
              left: 16,
              top: 25,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 90),
                        Center(
                          child: Text(
                            'Register',
                            style: GoogleFonts.montserrat(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4D4D4D),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),

                  // Label dan Input Nama Lengkap
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Text(
                      'Nama Lengkap',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                    child: _buildTextField(
                      icon: Icons.person_outline,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Label dan Input Email
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Text(
                      'Email',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                    child: _buildTextField(
                      icon: Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Label dan Input Kata Sandi
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Text(
                      'Kata Sandi',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                    child: _buildTextField(
                      icon: Icons.lock_outline,
                      obscureText: _obscureText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF1A529D),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Label dan Input Konfirmasi Kata Sandi
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Text(
                      'Konfirmasi Kata Sandi',
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                    child: _buildTextField(
                      icon: Icons.lock_outline,
                      obscureText: _obscureConfirmText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmText ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF1A529D),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmText = !_obscureConfirmText;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Tombol Register tetap di bawah
            Positioned(
              bottom: 100,
              left: 36,
              right: 36,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi register di sini
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1A529D),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Register',
                  style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk Input Field
  Widget _buildTextField({
    required IconData icon,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Container(
      width: double.infinity,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          // Ganti ikon dengan Image.asset jika ikon adalah lock
          prefixIcon: icon == Icons.lock_outline
              ? Padding(
            padding: const EdgeInsets.all(12.0), // Sesuaikan padding jika diperlukan
            child: Image.asset(
              'images_page2/IconLock.png',
              width: 20,
              height: 20,
            ),
          )
              : Icon(icon, color: Color(0xFF1A529D)),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xFF1A529D), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xFF1A529D), width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xFF1A529D), width: 1.5),
          ),
        ),
      ),
    );
  }
}