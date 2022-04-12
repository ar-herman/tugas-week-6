import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Registercontroller extends GetxController {
  //variabel untuk menyimpan nilai
  String email = "";
  String name = "";
  String password = "";

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  //function untuk menyimpan data email dan name
  void saveSession() {
    //validasi form
    if (keyForm.currentState!.validate()) {
      keyForm.currentState!.save();

      //var ini digunakan untuk mengelola variabel name dan email di dalam storage
      Map<String, dynamic> user = {
        "name": name,
        "email": email,
        "password": password,
      };
      GetStorage().write("user", user).then((value) {
        //navigasi kehalaman home
        Get.offNamed("/login");
      });
    }
  }
}
