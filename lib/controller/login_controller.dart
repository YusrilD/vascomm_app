import 'package:get/get.dart';

enum AuthStatus {
  authenticated,
  unauthenticated,
  notDetermined,
}

class LoginController extends GetxController {
  var authStatus = AuthStatus.notDetermined.obs;
}
