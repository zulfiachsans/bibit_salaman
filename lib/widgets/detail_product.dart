import 'package:bibit_salaman/models/terlaris.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key, required this.terlaris});
  final Terlaris terlaris;

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  String? shortText;
  bool isExpanded = false;
  bool isFav = false;
  bool isShare = false;

  @override
  void initState() {
    super.initState();

    final int endIndex =
        widget.terlaris.description!.indexOf('suscipit') + 'suscipit'.length;
    if (endIndex != -1) {
      // Jika kata 'suscipit' ditemukan, potong teks sampai di sana.
      shortText = widget.terlaris.description!
          .substring(0, endIndex + 'suscipit'.length);
    } else {
      // Jika tidak ditemukan, tampilkan seluruh teks atau set ke default.
      shortText = widget.terlaris.description!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.terlaris.imageUrl!,
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SvgPicture.asset(
                            'assets/ic_back.svg',
                            width: 20,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFav = !isFav;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SvgPicture.asset(
                            isFav
                                ? 'assets/ic_saveclicked.svg'
                                : 'assets/ic_save.svg',
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        //buatkan widthnya menyesuaikan ukuran item.label
                        width: widget.terlaris.label!.length * 10.0,
                        height: widget.terlaris.label!.length * 2.5,
                        decoration: BoxDecoration(
                          color: greyScale200,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, left: 8),
                          child: Text(
                            widget.terlaris.label ?? "",
                            style: bodysixRegular.copyWith(
                              color: basePrimary,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Image.asset(
                        'assets/rating.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.terlaris.title ?? "",
                        style: headingtwoBold.copyWith(
                          color: greyScale900,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isShare = !isShare;
                          });
                        },
                        child: SvgPicture.asset(
                          isShare
                              ? 'assets/ic_shareclicked.svg'
                              : 'assets/ic_share.svg',
                          width: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${widget.terlaris.stok ?? ""} Stok",
                        style: bodyfourMedium.copyWith(
                          color: greyScale900,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: greyScale200,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "465 Reviews",
                        style: bodysixMedium.copyWith(
                          color: greyScale400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/ic_location.svg',
                        width: 15,
                        // ignore: deprecated_member_use
                        color: greyScale400,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Salaman, Kabupaten Magelang',
                        style: bodysixMedium.copyWith(
                          color: greyScale400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    isExpanded
                        ? widget.terlaris.description ?? ""
                        : '${shortText ?? widget.terlaris.description}...',
                    style: bodyfourRegular.copyWith(
                      color: greyScale500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? 'Tutup' : 'Baca Selengkapnya >',
                      style: bodysixMedium.copyWith(
                        color: basePrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: greyScale200,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Informasi Bibit',
                    style: bodythreeBold.copyWith(
                      color: greyScale900,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/ic_varietas.svg',
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Varietas',
                            style: bodyfourSemibold.copyWith(
                              color: greyScale900,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            widget.terlaris.varietas ?? "",
                            style: bodyfourRegular.copyWith(
                              color: greyScale500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/ic_tinggibibit.svg',
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tinggi Bibit',
                            style: bodyfourSemibold.copyWith(
                              color: greyScale900,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            widget.terlaris.weight ?? "",
                            style: bodyfourRegular.copyWith(
                              color: greyScale500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: greyScale200,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Komentar',
                        style: bodythreeBold.copyWith(
                          color: greyScale900,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: bodyfourMedium.copyWith(
                          color: basePrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 10,
                            ),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: greyScale50,
                              border: Border.all(
                                color: greyScale200,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage:
                                              AssetImage('assets/avatar.png'),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Reza Alif',
                                              style: bodytwoSemibold.copyWith(
                                                color: greyScale900,
                                              ),
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              '1 minggu yang lalu',
                                              style: bodysixMedium.copyWith(
                                                color: greyScale500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: bodythreeSemibold.copyWith(
                                            color: greyScale900,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                          '/5.0',
                                          style: bodythreeMedium.copyWith(
                                            color: greyScale300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Saya sangat puas dengan bibit durian yang saya beli di sini. Bibitnya tiba dalam kondisi sangat sehat.',
                                  style: bodythreeRegular.copyWith(
                                    color: greyScale400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: greyScale200,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Lokasi Toko',
                    style: bodythreeBold.copyWith(
                      color: greyScale900,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
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
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: greyScale200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Harga Produk :',
                    style: bodyfourMedium.copyWith(
                      color: greyScale600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${widget.terlaris.price}/Pcs',
                    style: bodythreeBold.copyWith(
                      color: greyScale900,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
