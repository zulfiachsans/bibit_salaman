import 'package:bibit_salaman/pages/login_page.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Teks Judul
              Text(
                "Buat akun Anda",
                style: headingtwoBold.copyWith(
                  color: greyScale900,
                ),
              ),
              const SizedBox(height: 10),
              // Subjudul
              Text(
                "Jualan cerdas dengan tanamkuy",
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
                  labelText: "Nama Lengkap",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: basePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: greyScale400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              TextField(
                style: bodythreeRegular.copyWith(
                  color: greyScale400,
                ),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Nomor KTP",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: basePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(
                    Icons.credit_card,
                    color: greyScale400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              TextField(
                style: bodythreeRegular.copyWith(
                  color: greyScale400,
                ),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Nomor Telephone",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: basePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: greyScale400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              TextField(
                style: bodythreeRegular.copyWith(
                  color: greyScale400,
                ),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Ketik Ulang Kata Sandi",
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
                  // Aksi tombol masuk
                },
                child: Text(
                  "Buat Akun",
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
                    text: "Sudah punya akun? ",
                    style: bodyfourRegular.copyWith(
                      color: greyScale500,
                    ),
                    children: [
                      TextSpan(
                        text: "Masuk",
                        style: bodythreeSemibold.copyWith(
                          color: basePrimary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Aksi tombol masuk
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const LoginPage(),
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
      ),
    );
  }
}
