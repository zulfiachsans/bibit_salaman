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
        child: Scaffold(
          backgroundColor: colorWhite,
          body: ListView(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
