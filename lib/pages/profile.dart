import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        shadowColor: greyScale300,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: colorWhite,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profile',
              style: bodythreeBold.copyWith(
                color: greyScale900,
                fontSize: 16,
              ),
            ),
            SvgPicture.asset(
              'assets/ic_notif.svg',
              width: 18,
              height: 18,
              // ignore: deprecated_member_use
              color: greyScale400,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile_bg.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 16,
                  right: 16,
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: greyScale500.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 28.0,
                            backgroundImage: AssetImage('assets/avatar.png'),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reza Ardian',
                                style: bodytwoSemibold.copyWith(
                                  color: greyScale900,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/loc.svg',
                                    width: 20,
                                    height: 20,
                                    // ignore: deprecated_member_use
                                    color: greyScale300,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Salaman, Magelang',
                                    style: bodysixMedium.copyWith(
                                      color: greyScale300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: greyScale200,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: greyScale100,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/ic_varietas.svg',
                                    width: 30,
                                    height: 30,
                                    // ignore: deprecated_member_use
                                    color: baseSecondary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Produk Saya',
                                    style: bodyfiveMedium.copyWith(
                                      color: greyScale400,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '120',
                                    style: bodysixMedium.copyWith(
                                      color: greyScale900,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: greyScale100,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/ic_dollar.svg',
                                    width: 30,
                                    height: 30,
                                    // ignore: deprecated_member_use
                                    color: baseSecondary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Produk Terjual',
                                    style: bodyfiveMedium.copyWith(
                                      color: greyScale400,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '3000',
                                    style: bodysixMedium.copyWith(
                                      color: greyScale900,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-user.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Akun dan Lokasi Toko',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-user.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Database Distributon',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-transaksi.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Buat Transaksi',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-laporan.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Laporan Transaksi',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-bintang.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Ulasan Distributor',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic-help.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Bantuan Aplikasi',
                          style: bodythreeMedium.copyWith(
                            color: greyScale900,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/chevron-right.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: greyScale200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
