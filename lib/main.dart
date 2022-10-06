import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/controller/login_controller.dart';
import 'package:vascomm_app/views/auth/login.dart';
import 'package:vascomm_app/views/main/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) {
          if (loginC.authStatus.value == AuthStatus.notDetermined ||
              loginC.authStatus.value == AuthStatus.unauthenticated) {
            return LoginPage();
          } else {
            return const Dashboard();
          }
        }
      },
    );
  }
}
