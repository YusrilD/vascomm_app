import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/controller/login_controller.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';
import 'package:vascomm_app/views/auth/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final Reuse use = Reuse();
  var loginC = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            use.upperWidget(),
            use.titleInput("Email"),
            use.spaceH(16),
            use.inputLogin(
              loginC,
              hintText: "Masukkan email anda",
              type: 0,
            ),
            use.spaceH(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                use.titleInput("Password"),
                TextButton(
                  onPressed: () {},
                  child: use.titleInput("Lupa Password Anda ?"),
                ),
              ],
            ),
            Obx(
              () => use.inputLogin(
                loginC,
                hintText: "Masukkan password anda",
                isPassword: true,
                type: 0,
              ),
            ),
            use.spaceH(40),
            use.authButton("Login", () {}),
            use.spaceH(30),
            use.loginRegisterRedirect(
              "Belum punya akun ?",
              "  Daftar sekarang",
              () {
                use.navPush(context, () => RegisterPage());
              },
            ),
            use.spaceH(40),
            use.rights(),
            use.spaceH(20),
          ],
        ),
      ),
    );
  }
}
