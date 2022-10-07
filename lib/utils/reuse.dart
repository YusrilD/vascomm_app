import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/controller/login_controller.dart';
import 'package:vascomm_app/source/image_assets.dart';

class Reuse {
  spaceH(double height) {
    return SizedBox(
      height: height,
    );
  }

  spaceW(double width) {
    return SizedBox(
      width: width,
    );
  }

  navPush(BuildContext context, Widget Function() page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return page();
        },
      ),
    );
  }

  Widget authButton(String text, Function() tap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: tap,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF002060),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "GilroySemiBold",
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginRegisterRedirect(String title, String subtitle, Function() tap) {
    return Container(
      width: Get.width,
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: title,
          // "Belum punya akun ?",
          style: const TextStyle(
            color: Color(0xFFBEBEBE),
            fontFamily: "ProximanovaRegular",
            fontSize: 14,
          ),
          children: <TextSpan>[
            TextSpan(
              text: subtitle,
              // "  Daftar sekarang",
              recognizer: TapGestureRecognizer()..onTap = tap,
              style: const TextStyle(
                color: Color(0xFF002060),
                fontWeight: FontWeight.w800,
                fontFamily: "ProximanovaSemibold",
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upperWidget() {
    return Column(
      children: [
        spaceH(110),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: RichText(
            text: const TextSpan(
              text: "Hai, ",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "GilroySemiBold",
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
      ],
    );
  }

  Row rights() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageAssets.right,
        ),
        spaceW(10),
        const Text(
          "SILK. all right reserved.",
          style: TextStyle(
            color: Color(0xFFBEBEBE),
            fontFamily: "GilroySemiBold",
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Padding titleInput(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF002060),
          fontFamily: "GilroySemiBold",
          fontSize: 12,
        ),
      ),
    );
  }

  Container inputLogin(LoginController loginC,
      {String hintText = "",
      TextEditingController? controller,
      bool isPassword = false,
      required int type}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
        child: TextField(
          obscureText: loginC.obscureText(isPassword, type),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: "ProximanovaRegular",
              fontSize: 12,
            ),
            suffixIcon: isPassword
                ? InkWell(
                    onTap: () {
                      loginC.setVisible(type);
                    },
                    child: Image.asset(
                      ImageAssets.obscure,
                    ),
                  )
                : const Icon(
                    Icons.close,
                    size: 15,
                    color: Colors.white,
                  ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
