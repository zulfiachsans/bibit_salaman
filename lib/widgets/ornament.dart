import 'package:bibit_salaman/models/ornament_data.dart';
import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Ornament extends StatefulWidget {
  final OrnamentData ornamentData;
  const Ornament(this.ornamentData, {super.key});

  @override
  State<Ornament> createState() => _OrnamentState();
}

class _OrnamentState extends State<Ornament> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 10.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    widget.ornamentData.leftOrnament!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  widget.ornamentData.rightOrnament!,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Penjualan Hari ini',
                          style: bodyfiveRegular.copyWith(
                            color: greyScale500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Rp 1.000.000',
                          style: bodyoneBold.copyWith(color: greyScale900),
                        ),
                      ],
                    ),
                    widget.ornamentData.isSeen!
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SvgPicture.asset(
                              'assets/ic_arrow.svg',
                              width: 24,
                              height: 24,
                              // ignore: deprecated_member_use
                              color: greyScale500,
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // buatkan agar ornament ada 2 di kanan kiri container
      ],
    );
  }
}
