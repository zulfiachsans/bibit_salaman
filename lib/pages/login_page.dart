// ignore_for_file: sort_child_properties_last

import 'package:bibit_salaman/pages/signup.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/bottom_navbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teks Judul
            Text(
              "Masuk ke akun Anda",
              style: headingtwoBold.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 10),
            // Subjudul
            Text(
              "Jualan cerdas dengan Bisa (Bibit Salaman)",
              style: bodyfourMedium.copyWith(
                color: greyScale500,
              ),
            ),
            const SizedBox(height: 24),
            // Field Nomor Telepon
            TextField(
              style: bodythreeRegular.copyWith(
                color: greyScale400,
              ),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: greyScale400,
                ),
                labelText: "Ketik nomor telephone",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: basePrimary,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.phone, color: greyScale400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            // Field Kata Sandi
            TextField(
              style: bodythreeRegular.copyWith(
                color: greyScale400,
              ),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: greyScale400,
                ),
                labelText: "Ketik Kata Sandi",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: basePrimary,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.lock, color: greyScale400),
                suffixIcon: const Icon(Icons.visibility, color: greyScale400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 40),
            // Tombol Masuk
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const BottomNavBar(),
                  ),
                );
              },
              child: Text(
                "Masuk",
                style: bodythreeBold.copyWith(
                  color: colorWhite,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: basePrimary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Teks Buat Akun
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Belum punya akun? ",
                  style: bodyfourRegular.copyWith(
                    color: greyScale500,
                  ),
                  children: [
                    TextSpan(
                      text: "Buat Akun",
                      style: bodythreeSemibold.copyWith(
                        color: basePrimary,
                      ),
                      // create inkwell
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const SignUpPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
