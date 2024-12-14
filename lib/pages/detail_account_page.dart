import 'package:bibit_salaman/pages/profile.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class DetailAccountPage extends StatelessWidget {
  const DetailAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorWhite,
        centerTitle: true,
        title: Text(
          'Akun dan Toko',
          style: bodythreeBold.copyWith(
            color: greyScale900,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Text(
              'Informasi Akun',
              style: bodythreeBold.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nama Lengkap',
              style: bodyfourMedium.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyScale200,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/ic_person.svg',
                    width: 25,
                    height: 25,
                    // ignore: deprecated_member_use
                    color: greyScale300,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Reza Ardian',
                    style: bodythreeRegular.copyWith(
                      color: greyScale900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nomor KTP',
              style: bodyfourMedium.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyScale200,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/ic_personalid.svg',
                    width: 25,
                    height: 25,
                    // ignore: deprecated_member_use
                    color: greyScale300,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    '3323123456789',
                    style: bodythreeRegular.copyWith(
                      color: greyScale900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nomor Telepon',
              style: bodyfourMedium.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyScale200,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/ic_call.svg',
                    width: 25,
                    height: 25,
                    // ignore: deprecated_member_use
                    color: greyScale300,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    '081325451234',
                    style: bodythreeRegular.copyWith(
                      color: greyScale900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Ubah Kata Sandi',
              style: bodyfourMedium.copyWith(
                color: greyScale900,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: greyScale200,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/ic_lock.svg',
                    width: 25,
                    height: 25,
                    // ignore: deprecated_member_use
                    color: greyScale300,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    '********',
                    style: bodythreeRegular.copyWith(
                      color: greyScale900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lokasi Toko',
                  style: bodythreeBold.copyWith(
                    color: greyScale900,
                  ),
                ),
                SvgPicture.asset(
                  'assets/ic-edit.svg',
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                color: greyScale200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/map.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Jl. Salaman, Salaman Utara Rt 03 Rw  04, Kabupaten Magelang, 56714',
              style: bodysixMedium.copyWith(
                color: greyScale400,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Lihat di Maps >',
              style: bodysixMedium.copyWith(
                color: basePrimary,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavBar(
                      selectedIndex: 3,
                    ),
                  ),
                );
              },
              child: Text(
                "Simpan Perubahan",
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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
