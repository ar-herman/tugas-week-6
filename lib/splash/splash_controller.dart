import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashControler extends GetxController {
  selection() {
    return Timer(
      const Duration(seconds: 2),
      () {
        if (GetStorage().hasData("user")) {
          Get.offAllNamed("/home");
        } else {
          Get.offAllNamed("/register");
        }
      },
    );
  }

  @override
  void onReady() {
    selection();
    super.onReady();
  }
}
