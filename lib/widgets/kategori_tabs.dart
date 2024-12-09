import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class KategoriTabs extends StatefulWidget {
  const KategoriTabs({super.key});

  @override
  State<KategoriTabs> createState() => _KategoriTabsState();
}

class _KategoriTabsState extends State<KategoriTabs> {
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  // ignore: unused_field
  bool _isCategoryEmpty = true;

  // Method untuk mengubah status tombol simpan kategori
  // ignore: unused_element
  void _onCategoryChanged() {
    setState(() {
      // Jika kategori kosong, disable tombol, jika terisi, aktifkan tombol
      _isCategoryEmpty = _categoryController.text.isEmpty;
    });
  }

  void initState() {
    super.initState();
    filteredCategories = categories; // Awalnya tampilkan semua kategori
  }

  void filterCategories(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredCategories = categories;
      } else {
        filteredCategories = categories
            .where((category) =>
                category.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  final List<String> categories = [
    'Buah - Buahan',
    'Tanaman Hias',
    'Tanaman Kayu',
    'Tanaman Perkebunan',
    'Sayuran',
  ];

  List<String> filteredCategories = [];

  void _showAddCategoryDialog(BuildContext context) {
    showMaterialModalBottomSheet(
      barrierColor: greyScale900.withOpacity(0.5),
      expand: false,
      animationCurve: Curves.easeInOut,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => SingleChildScrollView(
        controller: ModalScrollController.of(context),
        // buatkan container dengan input
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 16,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Tambah Kategori',
                style: bodythreeSemibold.copyWith(
                  color: greyScale900,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 1,
                color: greyScale200,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _categoryController,
                onChanged: (_) => _onCategoryChanged(),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Nama Kategori",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: basePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    categories.add(_categoryController.text);
                  });
                },
                child: const SizedBox(
                  width: double.infinity, // Full width
                  height: 50, // Tinggi tombol
                  child: Center(
                    child: Text(
                      'Simpan Kategori',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isCategoryEmpty ? Colors.grey : basePrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomRight, // Posisi di pojok kiri bawah
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, bottom: 20.0), // Jarak 20 dari bawah dan kiri
          child: FloatingActionButton(
            onPressed: () => _showAddCategoryDialog(context),
            backgroundColor: basePrimary,
            child: const Icon(
              Icons.add,
              color: colorWhite,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Membuat sudut rounded
            ),
          ),
        ),
      ),
      backgroundColor: colorWhite,
      body: Column(
        children: [
          // buatkan searching berdasarkan data dari kategori
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              onChanged: filterCategories,
              decoration: InputDecoration(
                hintText: 'Cari kategori',
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: basePrimary,
                  ), // Warna hijau untuk outline default
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: basePrimary,
                    width: 2.0,
                  ), // Warna hijau untuk outline saat fokus
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: filteredCategories.length,
              itemBuilder: (context, index) {
                final category = filteredCategories[index];
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: greyScale200,
                        ),
                      ),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              category,
                              style: bodyfourSemibold.copyWith(
                                color: greyScale500,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Stok 800",
                              style: bodysixSemibold.copyWith(
                                color: greyScale700,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          '20 Produk',
                          style: bodysixMedium.copyWith(
                            color: basePrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
