import 'package:bibit_salaman/utils/utils.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 7,
                    height: MediaQuery.of(context).size.width / 7,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyScale200,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/filter.png',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Pesan',
                        prefixIcon: const Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: greyScale200,
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
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        bottom: 12,
                      ),
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 12,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: greyScale200,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    radius: 25.0,
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
                                        style: bodyfourSemibold.copyWith(
                                          color: greyScale900,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        'Oke Mas Saya Segera Kirim',
                                        style: bodysixMedium.copyWith(
                                          color: greyScale500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '10.00',
                                style: bodysixRegular.copyWith(
                                  color: greyScale500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
