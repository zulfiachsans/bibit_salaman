import 'package:bibit_salaman/models/ornament_data.dart';
import 'package:bibit_salaman/models/terlaris.dart';
import 'package:bibit_salaman/pages/laporan_penjualan_page.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/card_terlaris.dart';
import 'package:bibit_salaman/widgets/ornament.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Terlaris> data = [
    Terlaris(
        imageUrl: 'assets/anggur.png', title: 'Bibit Anggur', stok: '2 Stok'),
    Terlaris(
        imageUrl: 'assets/mangga.png', title: 'Bibit Mangga', stok: '5 Stok'),
    Terlaris(
        imageUrl: 'assets/durian.png', title: 'Bibit Durian', stok: '11 Stok'),
    Terlaris(
        imageUrl: 'assets/alpukat.png', title: 'Bibit Alpukat', stok: '20 Stok')
  ];

  final ScrollController _scrollController = ScrollController();
  bool isScrolled = false;
  bool isFloating = false;
  String formattedDate = DateFormat('d MMM yy').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50 && !isScrolled) {
        setState(() {
          isScrolled = true;
        });
      } else if (_scrollController.offset <= 50 && isScrolled) {
        setState(() {
          isScrolled = false;
        });
      }
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
              backgroundColor: isScrolled ? basePrimary : Colors.transparent,
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
                        const AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 300),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colorWhite,
                          ),
                          child: Text('Beranda'),
                        ),
                        SvgPicture.asset(
                          'assets/ic_notif.svg',
                          width: 18,
                          height: 18,
                          // ignore: deprecated_member_use
                          color: colorWhite,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Produk Terlaris',
                                  style: bodyfourBold.copyWith(
                                    color: greyScale900,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  formattedDate.toString(),
                                  style: bodyfiveRegular.copyWith(
                                    color: greyScale500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Lihat Semua >',
                              style: bodyfourSemibold.copyWith(
                                color: basePrimary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CardTerlaris(
                                Terlaris(
                                  imageUrl: 'assets/durian.png',
                                  title: 'Bibit Durian',
                                  stok: '800 Terjual',
                                  isPopular: true,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 2,
                              child: CardTerlaris(
                                Terlaris(
                                  imageUrl: 'assets/alpukat.png',
                                  title: 'Bibit Alpukat',
                                  stok: '200 Terjual',
                                  isPopular: true,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CardTerlaris(
                                Terlaris(
                                  imageUrl: 'assets/anggur.png',
                                  title: 'Bibit Anggur',
                                  stok: '500 Terjual',
                                  isPopular: true,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 2,
                              child: CardTerlaris(
                                Terlaris(
                                  imageUrl: 'assets/mangga.png',
                                  title: 'Bibit Mangga',
                                  stok: '350 Terjual',
                                  isPopular: true,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: List.generate(4, (index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Stok Menipis',
                                      style: bodyfourBold.copyWith(
                                        color: greyScale900,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'Lihat Semua >',
                                      style: bodyfourSemibold.copyWith(
                                        color: basePrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: data.map((terlaris) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          child: CardTerlaris(terlaris),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                const SizedBox(
                                    height: 20), // Spasi antar pengulangan
                              ],
                            );
                          }),
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
