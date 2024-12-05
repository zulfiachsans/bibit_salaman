import 'package:bibit_salaman/pages/home_page.dart';
import 'package:bibit_salaman/pages/message.dart';
import 'package:bibit_salaman/pages/product.dart';
import 'package:bibit_salaman/pages/profile.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Indeks halaman aktif

  // Daftar halaman untuk setiap tab
  final List<Widget> _pages = [
    const HomePage(),
    const ProductPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  // ignore: unused_field
  final List<String> _icons = [
    "assets/ic_home.svg",
    "assets/ic_product.svg",
    "assets/ic_message.svg",
    "assets/ic_profile.svg",
  ];

  Widget buildSvgIcon(String path, bool isSelected) {
    return SvgPicture.asset(
      path,
      // ignore: deprecated_member_use
      color: isSelected
          ? basePrimary
          : greyScale400, // Warna berubah sesuai status
      height: 24,
      width: 24,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: _pages[_currentIndex], // Tampilkan halaman berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Tipe tab
        currentIndex: _currentIndex, // Indeks tab yang dipilih
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Ubah indeks saat tab dipilih
          });
        },
        selectedLabelStyle: bodysixSemibold,
        unselectedLabelStyle: bodysixRegular,
        items: [
          BottomNavigationBarItem(
            icon: buildSvgIcon(_icons[0], _currentIndex == 0),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: buildSvgIcon(_icons[1], _currentIndex == 1),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: buildSvgIcon(_icons[2], _currentIndex == 2),
            label: "Pesan",
          ),
          BottomNavigationBarItem(
            icon: buildSvgIcon(_icons[3], _currentIndex == 3),
            label: "Profil",
          ),
        ],
        selectedItemColor: basePrimary, // Warna tab aktif
        unselectedItemColor: greyScale400, // Warna tab tidak aktif
        showUnselectedLabels: true, // Tampilkan label untuk tab tidak aktif
      ),
    );
  }
}
