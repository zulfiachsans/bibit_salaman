import 'package:bibit_salaman/pages/login_page.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingPageThree extends StatefulWidget {
  const OnboardingPageThree({super.key});

  @override
  State<OnboardingPageThree> createState() => _OnboardingPageThreeState();
}

class _OnboardingPageThreeState extends State<OnboardingPageThree> {
  String? selectedRole;
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
                  image: AssetImage('assets/onboarding_three.png'),
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
                      'Kamu Mau Jadi Petani\natau Distributor?',
                      textAlign: TextAlign.center,
                      style: bodyoneSemibold,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Pilih peranmu di aplikasi ini: mau jadi\npetani yang jual bibit, atau distributor\nyang bantu pasarkan',
                      textAlign: TextAlign.center,
                      style: bodyfourMedium.copyWith(
                        color: greyScale500,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 48,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              setState(() {
                                selectedRole = 'Petani';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: selectedRole == 'Petani'
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedRole == 'Petani'
                                  ? basePrimary.withOpacity(0.1)
                                  : Colors.white,
                              side: BorderSide(
                                color: selectedRole == 'Petani'
                                    ? basePrimary
                                    : greyScale200,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            icon: Image.asset(
                              'assets/petani.png',
                              width: 24,
                              height: 24,
                            ),
                            label: Text(
                              'Petani',
                              style: bodyfourSemibold.copyWith(
                                color: selectedRole == 'Petani'
                                    ? basePrimary
                                    : greyScale500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 48,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              setState(() {
                                selectedRole = 'Distributor';
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: selectedRole == 'Distributor'
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedRole == 'Distributor'
                                  ? basePrimary.withOpacity(0.1)
                                  : Colors.white,
                              side: BorderSide(
                                color: selectedRole == 'Distributor'
                                    ? basePrimary
                                    : greyScale200,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            icon: Image.asset(
                              'assets/distributor.png',
                              width: 24,
                              height: 24,
                            ),
                            label: Text(
                              'Distributor',
                              style: bodyfourSemibold.copyWith(
                                color: selectedRole == 'Distributor'
                                    ? basePrimary
                                    : greyScale500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        // create elevated button continue with animation

                        onPressed: selectedRole == null
                            ? null
                            : () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: const LoginPage(),
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
