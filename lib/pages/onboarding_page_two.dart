import 'package:bibit_salaman/pages/login_page.dart';
import 'package:bibit_salaman/pages/onboarding_page_three.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingPageTwo extends StatefulWidget {
  const OnboardingPageTwo({super.key});

  @override
  State<OnboardingPageTwo> createState() => _OnboardingPageTwoState();
}

class _OnboardingPageTwoState extends State<OnboardingPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding_two.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // create elevated button skip on the top right
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const LoginPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorWhite,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: bodyfourSemibold.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 24,
              left: 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width - (edge * 2),
                decoration: const BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Bikin Toko Sendiri ? \n Bisa Banget',
                      textAlign: TextAlign.center,
                      style: bodyoneSemibold,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Upload bibit, atur pesanan, semuanya\nlangsung dari sini',
                      textAlign: TextAlign.center,
                      style: bodyfourMedium.copyWith(
                        color: greyScale500,
                      ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const OnboardingPageThree(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: basePrimary,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Lanjutkan',
                          style: bodyoneSemibold.copyWith(
                            color: colorWhite,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24)
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
