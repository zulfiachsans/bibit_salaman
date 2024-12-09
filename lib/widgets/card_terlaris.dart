import 'package:bibit_salaman/models/terlaris.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';

class CardTerlaris extends StatelessWidget {
  const CardTerlaris(this.terlaris, {super.key});
  final Terlaris terlaris;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: greyScale200,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.height / 15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    terlaris.imageUrl!,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Menyelaraskan teks secara vertikal
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    terlaris.title!,
                    style: bodyfiveSemibold.copyWith(
                      color: greyScale500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    terlaris.stok!,
                    style: bodysixMedium.copyWith(
                      color: terlaris.isPopular!
                          ? basePrimary
                          : const Color(0xFFB38325),
                      fontSize: 12,
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
