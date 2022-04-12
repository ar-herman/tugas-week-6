import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginControler extends GetxController {
  String email = "";
  String name = "";
  String password = "";

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  TextEditingController nameControler = TextEditingController();
  TextEditingController passControler = TextEditingController();

  void getSesionStage() {
    Map<String, dynamic> users = GetStorage().read("user");
    name = users["name"];
    password = users["password"];

    nameControler = TextEditingController(text: name);
    passControler = TextEditingController(text: password);
  }

  void loginData() {
    if (keyForm.currentState!.validate()) {
      if (name == nameControler.text && password == passControler.text) {
        // ignore: avoid_print
        print("data cocok");
        Get.toNamed("/home");
      } else {
        // ignore: avoid_print
        Get.snackbar("Maaf", "Data Belum Ada");
      }
    }
  }

  // void loginData() {
  //   if (nameControler.text == name && passControler.text == password) {
  //     Get.offNamed("/home");
  //     // ignore: avoid_print
  //     print("data cocok");
  //   } else {
  //     // ignore: avoid_print
  //     print("tidak ada");
  //   }
  // }
  @override
  void onReady() {
    getSesionStage();
    super.onReady();
  }
}
