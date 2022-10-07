import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/controller/login_controller.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

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
            Row(
              children: [
                Expanded(
                  child: _input("Nama Depan", "John"),
                ),
                // use.spaceW(35),
                Expanded(
                  child: _input("Nama Belakang", "Doe"),
                ),
              ],
            ),
            use.spaceH(40),
            _input("No. KTP", "Masukkan No. KTP anda"),
            use.spaceH(40),
            _input("Email", "Masukkan email anda"),
            use.spaceH(40),
            _input("No. Telpon", "Masukkan no telepon anda"),
            use.spaceH(40),
            _inputPassword(
              "Password",
              "Masukkan password anda",
              type: 1,
            ),
            use.spaceH(40),
            _inputPassword(
              "Konfirmasi Password",
              "Konfirmasi password anda",
              type: 2,
            ),
            use.spaceH(40),
            use.authButton("Register", () {}),
            use.spaceH(30),
            use.loginRegisterRedirect(
              "Sudah punya akun ?",
              "  Login sekarang",
              () {},
            ),
            use.spaceH(40),
            use.rights(),
            use.spaceH(20),
          ],
        ),
      ),
    );
  }

  Widget _input(String title, String hint, {int type = 0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        use.titleInput(title),
        use.spaceH(16),
        use.inputLogin(
          loginC,
          hintText: hint,
          type: type,
        ),
      ],
    );
  }

  Widget _inputPassword(String title, String hint, {int type = 0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        use.titleInput(title),
        use.spaceH(16),
        Obx(
          () => use.inputLogin(loginC,
              hintText: hint, isPassword: true, type: type),
        ),
      ],
    );
  }
}
