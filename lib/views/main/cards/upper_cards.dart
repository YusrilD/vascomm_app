import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';

class UpperCard extends StatelessWidget {
  UpperCard({
    Key? key,
  }) : super(key: key);

  final Reuse use = Reuse();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAssets.bgDashUpper,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          left: 40,
          child: Container(
            height: Get.height * 0.155,
            width: Get.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                use.spaceH(15),
                RichText(
                  text: const TextSpan(
                    text: "Solusi, ",
                    // "Belum punya akun ?",
                    style: TextStyle(
                      color: Color(0xFF002060),
                      fontFamily: "GilroySemiBold",
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Kesehatan Anda",
                        style: TextStyle(
                          color: Color(0xFF002060),
                          fontFamily: "GilroySemiBold",
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                use.spaceH(8),
                const Text(
                  "Update informasi seputar kesehatan semua bisa disini !",
                  style: TextStyle(
                    color: Color(0xFF002060),
                    fontFamily: "ProximanovaLight",
                    fontSize: 12,
                  ),
                ),
                use.spaceH(12),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 8.0,
                        spreadRadius: 3.0,
                        offset: const Offset(0, 25),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF002060),
                    ),
                    child: const Text(
                      "Selengkapnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ProximanovaLight",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                use.spaceH(15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
