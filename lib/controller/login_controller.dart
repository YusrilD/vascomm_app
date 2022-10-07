import 'package:get/get.dart';

enum AuthStatus {
  authenticated,
  unauthenticated,
  notDetermined,
}

class LoginController extends GetxController {
  var authStatus = AuthStatus.notDetermined.obs;

  var visibilityPassword = false.obs;
  var visibilityPasswordReg = false.obs;
  var visibilityPasswordRegConf = false.obs;

  void setVisible(int type) {
    switch (type) {
      case 0:
        if (visibilityPassword.value == false) {
          visibilityPassword.value = true;
        } else {
          visibilityPassword.value = false;
        }
        break;
      case 1:
        if (visibilityPasswordReg.value == false) {
          visibilityPasswordReg.value = true;
        } else {
          visibilityPasswordReg.value = false;
        }
        break;
      case 2:
        if (visibilityPasswordRegConf.value == false) {
          visibilityPasswordRegConf.value = true;
        } else {
          visibilityPasswordRegConf.value = false;
        }
        break;
      default:
    }
  }

  bool obscureText(bool isPassword, int type) {
    switch (type) {
      case 0:
        if (isPassword) {
          if (visibilityPassword.value) {
            return false;
          } else {
            return true;
          }
        } else {
          return false;
        }
      case 1:
        if (isPassword) {
          if (visibilityPasswordReg.value) {
            return false;
          } else {
            return true;
          }
        } else {
          return false;
        }
      case 2:
        if (isPassword) {
          if (visibilityPasswordRegConf.value) {
            return false;
          } else {
            return true;
          }
        } else {
          return false;
        }
      default:
        return false;
    }
  }
}
