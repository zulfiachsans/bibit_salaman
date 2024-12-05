import 'package:bibit_salaman/models/ornament_data.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:bibit_salaman/widgets/ornament.dart';
import 'package:flutter/material.dart';

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Laporan Transaksi',
            style: bodythreeBold.copyWith(
              color: greyScale900,
              fontSize: 18,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Ornament(
                    OrnamentData(
                      leftOrnament: 'assets/ornament.png',
                      rightOrnament: 'assets/ornament.png',
                      isSeen: false,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ));
  }
}
