import 'package:bibit_salaman/models/terlaris.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProdukTabs extends StatefulWidget {
  const ProdukTabs({super.key});

  @override
  State<ProdukTabs> createState() => _ProdukTabsState();
}

class _ProdukTabsState extends State<ProdukTabs> {
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  // ignore: unused_field
  bool _isCategoryEmpty = true;
  List<Terlaris> filteredItems = [];

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
    filteredItems = allData; // Awalnya tampilkan semua kategori
  }

  void filterCategories(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredItems = allData; // Jika query kosong, tampilkan semua data
      } else {
        // Filter berdasarkan label atau judul produk yang mengandung kata kunci
        filteredItems = allData.where((item) {
          return (item.label ?? "")
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              (item.title ?? "").toLowerCase().contains(query.toLowerCase());
        }).toList();

        // Filter untuk menampilkan produk yang judulnya mengandung kata "Bibit"
        filteredItems = filteredItems
            .where((item) => (item.title ?? "").toLowerCase().contains('bibit'))
            .toList();
      }
    });
  }

  List<String> get categories {
    // Ambil semua label yang unik dari allData
    return allData.map((item) => item.label ?? "").toSet().toList();
  }

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
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: FloatingActionButton(
            onPressed: () => _showAddCategoryDialog(context),
            backgroundColor: basePrimary,
            child: const Icon(
              Icons.add,
              color: colorWhite,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      backgroundColor: colorWhite,
      body: Column(
        children: [
          // TextField untuk pencarian data berdasarkan kategori dan judul
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              onChanged:
                  filterCategories, // Fungsi yang dipanggil saat mengetik
              decoration: InputDecoration(
                hintText: 'Cari kategori atau produk',
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: basePrimary,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: basePrimary,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),

          // Menampilkan hasil pencarian
          Expanded(
            child: filteredItems.isEmpty
                ? const Center(
                    child: Text(
                      'Data tidak ditemukan',
                      style: TextStyle(
                        fontSize: 16,
                        color: greyScale500,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 9.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: greyScale200,
                            ),
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              width: MediaQuery.of(context).size.width / 7,
                              height: MediaQuery.of(context).size.height / 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    item.imageUrl ?? "",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.title ?? "",
                                  style: bodyfourSemibold.copyWith(
                                    color: greyScale500,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Stok ${item.stok}",
                                  style: bodysixSemibold.copyWith(
                                    color: greyScale700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.price ?? "",
                                  style: bodyfourSemibold.copyWith(
                                    color: basePrimary,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  //buatkan widthnya menyesuaikan ukuran item.label
                                  width: item.label!.length * 10.0,
                                  decoration: BoxDecoration(
                                    color: greyScale100,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    item.label ?? "",
                                    style: bodysixRegular.copyWith(
                                      color: basePrimary,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
