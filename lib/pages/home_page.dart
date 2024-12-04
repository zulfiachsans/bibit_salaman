import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

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
                              Text(
                                'Lihat Semua >',
                                style: bodyfourSemibold.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 10.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Positioned(
                                child: Image.asset(
                                  'assets/ornament.png',
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: -20,
                                child: Transform.rotate(
                                  angle: -math.pi / 75,
                                  child: Image.asset(
                                    'assets/ornament.png',
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
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
            // SliverList(
            //  ,
            // ),
          ],
        ),
      ),
    );
  }
}
