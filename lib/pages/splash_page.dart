import 'package:bibit_salaman/pages/onboarding_page.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            // ignore: unused_local_variable
            padding: const EdgeInsets.only(
              top: 260,
              left: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Find Seeds \nfor Your Garden',
                  style: headingoneBold.copyWith(
                    color: colorWhite,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Temukan berbagai jenis benih \nuntuk kebun Anda',
                  style: bodythreeSemibold.copyWith(
                    color: colorWhite,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const OnboardingPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: basePrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Explore Now',
                      style: bodyfiveMedium.copyWith(
                          fontSize: 18, color: colorWhite),
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
