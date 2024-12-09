import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/kategori_tabs.dart';
import 'package:bibit_salaman/widgets/produk_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: colorWhite,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: basePrimary,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              color: colorWhite,
              child: const TabBar(
                dividerColor: colorWhite,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 4.0, color: basePrimary),
                  insets: EdgeInsets.symmetric(
                    horizontal: 100,
                  ), // Panjang indikator
                ), // Warna garis bawah indikator
                labelColor: basePrimary, // Warna teks aktif
                unselectedLabelColor: greyScale400,
                tabs: [
                  Tab(text: 'Produk'),
                  Tab(text: 'Kategori'),
                ],
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Produk',
                style: bodythreeBold.copyWith(
                  color: colorWhite,
                  fontSize: 16,
                ),
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
        ),
        body: const TabBarView(
          children: [
            ProdukTabs(),
            KategoriTabs(),
          ],
        ),
      ),
    );
  }
}
