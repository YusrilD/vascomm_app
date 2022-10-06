import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final Reuse use = Reuse();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          use.spaceH(110),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: RichText(
              text: const TextSpan(
                text: "Hai, ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GilroyLight",
                  fontSize: 28,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Selamat Datang",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: "GilroyExtraBold",
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Silahkan login untuk melanjutkan",
              style: TextStyle(
                color: Color(0xFF597393),
                fontFamily: "GilroyLight",
                fontSize: 12,
              ),
            ),
          ),
          Container(
            width: Get.width,
            alignment: Alignment.centerRight,
            child: Image.asset(ImageAssets.loginUpper),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.03),
                    blurRadius: 5.0,
                    spreadRadius: -5.0,
                    offset: const Offset(-4, 25),
                  ),
                ],
              ),
              child: const TextField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Masukkan email anda",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
