import 'package:bibit_salaman/models/ornament_data.dart';
import 'package:bibit_salaman/pages/laporan_penjualan_page.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/ornament.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool isScrolled = false;
  bool isFloating = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Ubah status isScrolled berdasarkan posisi scroll
      setState(() {
        isScrolled = _scrollController.offset > 200; // Atur threshold scroll
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: isFloating,
              expandedHeight: 280,
              pinned: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 16,
                ),
                expandedTitleScale: 1,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 300),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isScrolled ? Colors.black : Colors.white,
                          ),
                          child: const Text('Beranda'),
                        ),
                        SvgPicture.asset(
                          'assets/ic_notif.svg',
                          width: 18,
                          height: 18,
                          // ignore: deprecated_member_use
                          color: isScrolled ? Colors.black : Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                background: Stack(
                  children: [
                    // Background gambar dengan rounded corners
                    Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/image_bg.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 55,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Laporan Penjualan',
                                style: bodyfourBold.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LaporanPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Lihat Semua >',
                                  style: bodyfourSemibold.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Ornament(
                            OrnamentData(
                              leftOrnament: 'assets/ornament.png',
                              rightOrnament: 'assets/ornament.png',
                              isSeen: true,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Penjualan Bulan Ini',
                                        style: bodyfiveRegular.copyWith(
                                          color: greyScale500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Rp 20.000.000',
                                        style: bodyfiveSemibold.copyWith(
                                          color: greyScale500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Penjualan Tahun Ini',
                                        style: bodyfiveRegular.copyWith(
                                          color: greyScale500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Rp 100.000.000',
                                        style: bodyfiveSemibold.copyWith(
                                          color: greyScale500,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            // buatkan widget SliverList
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Produk Terlaris',
                              style: bodyfourBold.copyWith(
                                color: greyScale900,
                              ),
                            ),
                            Text(
                              'Lihat Semua >',
                              style: bodyfourSemibold.copyWith(
                                color: greyScale900,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/image.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tanaman Hias',
                                            style: bodyfiveRegular.copyWith(
                                              color: greyScale500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Rp 100.000',
                                            style: bodyfiveSemibold.copyWith(
                                              color: greyScale900,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Produk Terbaru',
                              style: bodyfourBold.copyWith(
                                color: greyScale900,
                              ),
                            ),
                            Text(
                              'Lihat Semua >',
                              style: bodyfourSemibold.copyWith(
                                color: greyScale900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
