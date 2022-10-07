import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';

class BottomCard extends StatelessWidget {
  BottomCard({
    Key? key,
  }) : super(key: key);

  final Reuse use = Reuse();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 135,
          width: Get.width,
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: Container(
            height: 105,
            width: Get.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10.0,
                  spreadRadius: -5.0,
                  offset: const Offset(-2, 25),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            width: Get.width - 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ImageAssets.searchCard,
                ),
                use.spaceW(20),
                Expanded(
                  child: Container(
                    height: 135,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        use.spaceH(15),
                        const Text(
                          "Track Pemeriksaan",
                          style: TextStyle(
                            color: Color(0xFF002060),
                            fontFamily: "GilroySemiBold",
                            fontSize: 18,
                          ),
                        ),
                        use.spaceH(8),
                        const Text(
                          "Kamu dapat mengecek progress pemeriksaanmu disini",
                          style: TextStyle(
                            color: Color(0xFF002060),
                            fontFamily: "ProximanovaLight",
                            fontSize: 12,
                          ),
                        ),
                        use.spaceH(12),
                        Row(
                          children: [
                            const Text(
                              "Daftar Tes",
                              style: TextStyle(
                                color: Color(0xFF002060),
                                fontFamily: "GilroySemiBold",
                                fontSize: 14,
                              ),
                            ),
                            use.spaceW(10),
                            const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF002060),
                              size: 15,
                            ),
                          ],
                        ),
                        use.spaceH(20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
