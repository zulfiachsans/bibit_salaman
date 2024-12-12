import 'package:bibit_salaman/models/terlaris.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/detail_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProdukTabs extends StatefulWidget {
  const ProdukTabs({super.key});

  @override
  State<ProdukTabs> createState() => _ProdukTabsState();
}

class _ProdukTabsState extends State<ProdukTabs> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _varietasController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _stokController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  // ignore: unused_field
  bool _isNameEmpty = true;
  bool _isVarietasEmpty = true;
  bool _isHeightEmpty = true;
  bool _isPriceEmpty = true;
  bool _isCategoryEmpty = true;
  bool _isStokEmpty = true;
  bool _isDescEmpty = true;
  List<Terlaris> filteredItems = [];

  final List<String> _categories = [
    'Kategori 1',
    'Kategori 2',
    'Kategori 3',
    'Kategori 4'
  ];

  String? _selectedCategory;

  // Fungsi umum untuk memeriksa apakah TextField kosong atau tidak
  void _onTextChanged(TextEditingController controller, String type) {
    setState(() {
      if (type == 'name') {
        _isNameEmpty = controller.text.isEmpty;
      } else if (type == 'varietas') {
        _isVarietasEmpty = controller.text.isEmpty;
      } else if (type == 'price') {
        _isPriceEmpty = controller.text.isEmpty;
      } else if (type == 'height') {
        _isHeightEmpty = controller.text.isEmpty;
      } else if (type == 'category') {
        _isCategoryEmpty = controller.text.isEmpty;
      } else if (type == 'stok') {
        _isStokEmpty = controller.text.isEmpty;
      } else if (type == 'desc') {
        _isDescEmpty = controller.text.isEmpty;
      }
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
      expand: true,
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
            left: 16,
            right: 20,
            bottom: 20,
          ),
          color: colorWhite,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Tutup modal
                    },
                    icon: const Icon(Icons.close),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Tambah Kategori',
                        style: bodythreeSemibold.copyWith(
                          color: greyScale900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 1,
                color: greyScale200,
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  // Gambar utama
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 100,
                    decoration: BoxDecoration(
                      color: greyScale50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/gallery.png', // Ganti dengan path gambar Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Ikon bulat di pojok kanan bawah
                  Positioned(
                    left: 60,
                    top: 60,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: basePrimary,
                      child: SvgPicture.asset(
                        'assets/camera.svg', // Ganti dengan path gambar Anda
                        // ignore: deprecated_member_use
                        color: colorWhite,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              TextField(
                controller: _nameController,
                onChanged: (_) => _onTextChanged(_nameController, 'name'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Nama Produk",
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
              const SizedBox(height: 15),
              TextField(
                controller: _varietasController,
                onChanged: (_) =>
                    _onTextChanged(_varietasController, 'varietas'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Varietas",
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
              const SizedBox(height: 15),
              TextField(
                controller: _heightController,
                onChanged: (_) => _onTextChanged(_heightController, 'height'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Tinggi Bibit",
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
              const SizedBox(height: 15),
              TextField(
                controller: _priceController,
                onChanged: (_) => _onTextChanged(_priceController, 'price'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Harga Jual",
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
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCategory = newValue;
                    _categoryController.text = newValue ?? '';
                  });
                },
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Pilih Kategori",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: _categories
                    .map((category) => DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        ))
                    .toList(),
                // Mengatur dekorasi dropdown agar lebih bagus

                elevation: 3, // Menambahkan efek bayangan untuk dropdown
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _stokController,
                onChanged: (_) => _onTextChanged(_stokController, 'stok'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Stok",
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
              const SizedBox(height: 15),
              TextField(
                controller: _descController,
                onChanged: (_) => _onTextChanged(_descController, 'desc'),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                    color: greyScale400,
                  ),
                  labelText: "Deskripsi",
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
                    _nameController.text = '';
                    _varietasController.text = '';
                    _heightController.text = '';
                    _priceController.text = '';
                    _categoryController.text = '';
                    _stokController.text = '';
                    _descController.text = '';
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
                  backgroundColor: _isNameEmpty ||
                          _isVarietasEmpty ||
                          _isHeightEmpty ||
                          _isPriceEmpty ||
                          _isCategoryEmpty ||
                          _isStokEmpty ||
                          _isDescEmpty
                      ? Colors.grey
                      : basePrimary,
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailProduct(terlaris: item);
                                },
                              ),
                            );
                          },
                          child: Card(
                            color: colorWhite,
                            shadowColor: greyScale100.withOpacity(0.1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Membuat sudut membulat
                              side: const BorderSide(
                                color: greyScale200, // Warna border
                                width: 1, // Ketebalan border
                              ),
                            ),
                            elevation: 0,
                            child: ListTile(
                              leading: Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 2,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
